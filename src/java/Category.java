
public class Category {

    private String mainClass;
    private String subClass;

    public Category(String mainClass, String subClass) {
        super();
        this.mainClass = mainClass;
        this.subClass = subClass;
    }

    public String getMainClass() {
        return mainClass;
    }

    public void setMainClass(String mainClass) {
        this.mainClass = mainClass;
    }

    public String getName() {
        return subClass;
    }

    public void setSubClass(String subClass) {
        this.subClass = subClass;
    }
}
