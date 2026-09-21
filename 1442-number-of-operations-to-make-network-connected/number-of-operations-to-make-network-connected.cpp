class Solution {
public:
    void dfs(vector<vector<int>>& adj,
             unordered_map<int, bool>& visited, int node) {
        visited[node] = 1;
        for (auto i : adj[node]) {
            if (!visited[i]) {
                dfs(adj, visited, i);
            }
        }
    }
    int makeConnected(int n, vector<vector<int>>& connections) {
        if (connections.size() < n - 1)
            return -1;
        vector<vector<int>> adj(n);

        for (auto connection : connections) {
            int u = connection[0];
            int v = connection[1];

            adj[u].push_back(v);
            adj[v].push_back(u);
        }
        int c = 0;
        unordered_map<int, bool> visited;

        for (int i = 0; i < n; i++) {
            if (!visited[i]) {
                c++;
                dfs(adj, visited, i);
            }
        }
        return c - 1;
    }
};