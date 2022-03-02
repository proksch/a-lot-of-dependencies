This repository just contains a bunch of versions of the Maven dependency `test:x` that allow you to play around with the Maven dependency resolution algorithm. The repository has two parts. The `main` branch contains the (trivial) code and the logic to package and release the code. The `repository` branch contains the content of a Maven repository.

To use the repository and its contents, define the following `repository` in your `pom.xml`.

    <repositories>
        <repository>
            <id>github</id>
            <url>https://github.com/proksch/a-lot-of-dependencies/raw/repository</url>
        </repository>
    </repositories>

The repository contains all versions in the range `{0..2}.{0..9}.{0..9}` of `test:x:<version>` (i.e., `0.0.0` to `2.9.9`). You can import them using 

    <dependency>
        <groupId>test</groupId>
        <artifactId>x</artifactId>
        <version>...</version>
    </dependency>

The `examples` folder contains several multi-module Maven projects that were created to explore the Maven dependency resolution algorithm and to illustrate various corner cases.
