public class Cell {
   Seed content;
   int row, col;

   public Cell(int row, int col) {
      this.row = row;
      this.col = col;
      this.content = Seed.NO_SEED;
   }

   public void newGame() {
      this.content = Seed.NO_SEED;
   }

   public void paint() {
      System.out.print(content.getIcon());
   }
}
