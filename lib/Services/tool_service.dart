class ToolService {
  int selectedTool = 1;

  //default tool
  ToolService() {
    selectedTool = 1;
  }

  void ChangleSelectedTool(int _newSelection) {
    selectedTool = _newSelection;
  }
}
