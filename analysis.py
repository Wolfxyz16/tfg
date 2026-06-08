import json
import networkx as nx
import pandas as pd
import numpy as np

class UltimateGameGraphAnalyzer:
    def __init__(self, json_path):
        with open(json_path, 'r') as f:
            self.data = json.load(f)
        self.G = nx.DiGraph()
        self._build_graph()
        # Copia no dirigida para métricas que requieren simetría
        self.U_G = self.G.to_undirected()

    def _build_graph(self):
        for task in self.data:
            target = task['target'].replace("'", "")
            for pre in task['pre']:
                item = pre.split("'")[1] if "'" in pre else pre.split("(")[1].split(",")[0]
                self.G.add_edge(item, target, action=task['action'])

    def run_all_metrics(self):
        print("==========================================================================")
        print("   🔬 INFORME MACRO-ESTRUCTURAL Y FORENSE DEL GRAFO DE PROGRESIÓN (TFG)   ")
        print("==========================================================================\n")

        # -------------------------------------------------------------------------
        # 1. MÉTRICAS TOPOLÓGICAS BÁSICAS
        # -------------------------------------------------------------------------
        n_nodes = self.G.number_of_nodes()
        n_edges = self.G.number_of_edges()
        density = nx.density(self.G)
        
        print("## 1. Topología Básica")
        print(f" 🔹 Total de Nodos (Ítems): {n_nodes}")
        print(f" 🔹 Total de Aristas (Dependencias/Recetas): {n_edges}")
        print(f" 🔹 Densidad del Grafo (Conectividad): {density:.6f}")
        
        # Grados
        in_degrees = [d for n, d in self.G.in_degree()]
        out_degrees = [d for n, d in self.G.out_degree()]
        print(f" 🔹 Grado de Entrada Máximo (Receta más compleja): {max(in_degrees)}")
        print(f" 🔹 Grado de Salida Máximo (Ítems más versátil): {max(out_degrees)}")
        print(f" 🔹 Grado Promedio General: {np.mean(in_degrees):.2f}")

        # -------------------------------------------------------------------------
        # 2. ANÁLISIS DE COMPONENTES E ISLAS
        # -------------------------------------------------------------------------
        weak_components = list(nx.weakly_connected_components(self.G))
        strong_components = list(nx.strongly_connected_components(self.G))
        main_comp = max(weak_components, key=len)
        
        print("\n## 2. Fragmentación y Conectividad")
        print(f" 🔹 Componentes Débilmente Conexos (Islas independientes): {len(weak_components)}")
        print(f" 🔹 Tamaño del Componente Principal (Jugable): {len(main_comp)} ({len(main_comp)/n_nodes*100:.2f}%)")
        print(f" 🔹 Componentes Fuertemente Conexos (Bucles de crafteo infinitos): {len(strong_components)}")
        
        # Imprimir bucles si existen (un bucle de tamaño > 1 es un bug de diseño)
        loops = [c for c in strong_components if len(c) > 1]
        if loops:
            print(f"   ⚠️ ¡ALERTA! Detectados {len(loops)} bucles infinitos en recetas (revisa tu KB):")
            for l in loops: print(f"    -> Bucle: {list(l)}")
        else:
            print("   ✅ Excelente: No existen bucles infinitos en el sistema de crafteo.")

        # -------------------------------------------------------------------------
        # 3. CLASIFICACIÓN FUNCIONAL DE NODOS (Análisis de Flujo)
        # -------------------------------------------------------------------------
        roots = [n for n in self.G.nodes() if self.G.in_degree(n) == 0]
        dead_ends = [n for n in self.G.nodes() if self.G.out_degree(n) == 0]
        intermediates = [n for n in self.G.nodes() if self.G.in_degree(n) > 0 and self.G.out_degree(n) > 0]
        
        print("\n## 3. Perfil de Flujo de Juego")
        print(f" 🔹 Nodos Raíz (Materias Primas / Naturaleza): {len(roots)} ({len(roots)/n_nodes*100:.2f}%)")
        print(f" 🔹 Nodos Intermedios (Componentes / Materiales Procesados): {len(intermediates)} ({len(intermediates)/n_nodes*100:.2f}%)")
        print(f" 🔹 Nodos Terminales (Dead Ends / Ítems Finales/Consumibles): {len(dead_ends)} ({len(dead_ends)/n_nodes*100:.2f}%)")

        # -------------------------------------------------------------------------
        # 4. ANÁLISIS AVANZADO DE CENTRALIDAD (Los Pilares del Juego)
        # -------------------------------------------------------------------------
        print("\n## 4. Análisis de Centralidad Avanzado")
        
        # Betweenness Centrality: Mide qué nodos controlan el paso (Cuellos de botella)
        bet_cent = nx.betweenness_centrality(self.G)
        top_bet = sorted(bet_cent.items(), key=lambda x: x[1], reverse=True)[:5]
        print(" 🏆 Cuellos de Botella Críticos (Betweenness Centrality):")
        for k, v in top_bet: print(f"   -> {k}: {v:.4f}")
        
        # PageRank: Relevancia estructural global (Ítems más influyentes)
        pagerank = nx.pagerank(self.G)
        top_pr = sorted(pagerank.items(), key=lambda x: x[1], reverse=True)[:5]
        print(" 🎯 Ítems con Mayor Impacto Estructural (PageRank):")
        for k, v in top_pr: print(f"   -> {k}: {v:.4f}")

        # -------------------------------------------------------------------------
        # 5. DIAGNÓSTICO DE COMPLEJIDAD Y DISTANCIAS
        # -------------------------------------------------------------------------
        print("\n## 5. Complejidad Estructural de la Progresión")
        
        # Coeficiente de Clustering (Mide qué tan interconectadas están las recetas vecinas)
        avg_clustering = nx.average_clustering(self.U_G)
        print(f" 🔹 Coeficiente de Clustering Promedio: {avg_clustering:.4f}")
        
        # Asortatividad por grado (¿Los materiales raros se combinan con raros o con comunes?)
        assortativity = nx.degree_assortativity_coefficient(self.G)
        print(f" 🔹 Coeficiente de Asortatividad por Grado: {assortativity:.4f}")
        print("   💡 Nota: Un valor negativo significa que el sistema mezcla materiales básicos con avanzados constantemente.")

        # Longitud de caminos en el componente principal
        sub_g = self.U_G.subgraph(main_comp)
        diameter = nx.diameter(sub_g)
        avg_path = nx.average_shortest_path_length(sub_g)
        print(f" 🔹 Diámetro de la Componente Principal (Receta teórica más larga): {diameter} pasos")
        print(f" 🔹 Distancia Promedio entre Cualquier Par de Ítems: {avg_path:.2f} pasos")

        # -------------------------------------------------------------------------
        # 6. AUDITORÍA DEL OBJETIVO FINAL ('default:diamond')
        # -------------------------------------------------------------------------
        print("\n## 6. Auditoría Forense: Camino al Diamante ('default:diamond')")
        target_node = 'default:diamond'
        
        if target_node in self.G:
            ancestors = nx.ancestors(self.G, target_node)
            print(f" 🔹 El diamante depende de una sub-red de: {len(ancestors)} ítems ancestrales.")
            
            # Verificar si se puede llegar desde alguna materia prima real
            reachable_roots = [r for r in roots if nx.has_path(self.G, r, target_node)]
            print(f" 🔹 Materias Primas que alimentan la cadena del Diamante: {len(reachable_roots)} / {len(roots)}")
            if len(reachable_roots) == 0:
                print("   ❌ ERROR CRÍTICO DE DISEÑO: No hay materias primas conectadas al diamante.")
            else:
                print(f"   ✅ Correcto: El diamante es alcanzable desde las raíces.")
                # Camino más corto desde la primera raíz válida
                shortest_path = nx.shortest_path(self.G, reachable_roots[0], target_node)
                print(f"   🚀 Camino Óptimo más rápido detectado: {' -> '.join(shortest_path[:4])} ... -> {target_node}")
        else:
            print(f" ❌ EL NODO '{target_node}' NO EXISTE EN EL GRAFO EXPORTADO.")

        print("\n==========================================================================")
        print("                      📊 FIN DEL ANÁLISIS FORENSE                         ")
        print("==========================================================================")

# Instanciación y ejecución directa sin cortes
analyzer = UltimateGameGraphAnalyzer('./unique_task_graph.json')
analyzer.run_all_metrics()
