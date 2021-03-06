{
  "name": "{{APP_NAME}}",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "engines": {
    "node": "8.9.1",
    "npm": "5.5.1"
  },
  "scripts": {
    "test": "mocha test_helper.js test",
    "start": "webpack-dev-server --mode development --config webpack.config.js",
    "build": "rimraf dist/ && webpack --config webpack.config.js --mode production",
    "lint": "eslint src",
    "check": "npm run lint && cross-env NODE_ENV=test nyc npm test",
    "prepack": "npm run build",
    "check-node-version": "cross-var ./node_modules/.bin/check-node-version --node $npm_package_engines_node --npm $npm_package_engines_npm",
    "integTest": "cross-env BASE_URL=$1 protractor acceptanceTest/conf.js"
  },
  "nyc": {
    "require": [
      "babel-register"
    ],
    "all": true,
    "sourceMap": false,
    "instrument": false,
    "include": [
      "src"
    ],
    "exclude": [
      "src/index.js"
    ],
    "reporter": [
      "lcov",
      "text"
    ]
  },
  "keywords": [],
  "author": "",
  "dependencies": {
    "react": "^16.3.2",
    "react-dom": "^16.3.2"
  },
  "devDependencies": {
    "babel-core": "^6.26.3",
    "babel-eslint": "^8.2.3",
    "babel-loader": "^7.1.4",
    "babel-plugin-istanbul": "^4.1.6",
    "babel-polyfill": "^6.26.0",
    "babel-preset-env": "^1.6.1",
    "babel-preset-react": "^6.24.1",
    "babel-register": "^6.26.0",
    "chai": "^4.1.2",
    "chai-as-promised": "^7.1.1",
    "check-node-version": "^3.2.0",
    "cross-env": "^5.1.5",
    "cross-var": "^1.1.0",
    "css-loader": "^0.28.11",
    "enzyme": "^3.3.0",
    "enzyme-adapter-react-16": "^1.1.1",
    "eslint": "^4.19.1",
    "eslint-plugin-react": "^7.9.1",
    "file-loader": "^1.1.11",
    "html-webpack-plugin": "^3.2.0",
    "mocha": "^5.0.4",
    "nyc": "^11.6.0",
    "path": "^0.12.7",
    "protractor": "^5.3.0",
    "style-loader": "^0.21.0",
    "webpack": "^4.8.3",
    "webpack-cli": "^2.1.3",
    "webpack-dev-server": "^3.1.4"
  },
  "properties": {
    "artifactory_contextUrl": "http://af.cds.bns/artifactory",
    "artifactory_projectRepoKey": "local-npm-bns",
    "artifactory_user": "",
    "artifactory_password": "",
    "artifactory_npm_repo": "virtual-npm-bns",
    "pcf_app_url": "",
    "cdp_vault_name": "",
    "cdp_environment_name": "",
    "cdp_region_name": "",
    "cdp_vault_clientId": "",
    "cdp_vault_clientSecret": "",
    "pipeline_plugin_version": "1.1.2",
    "sonar_host_url": "http://sonar.agile.bns/",
    "sonar_sources": "src",
    "sonar_tests": "test",
    "sonar_report_paths": "coverage/lcov.info",
    "sonar_language": "js"
  },
  "settings": {
    "rootProject.name": "{{REPO_NAME}}"
  },
  "repository": {
    "type": "git",
    "url": "ssh://git@bitbucket.agile.bns:7999/{{PROJECT_NAME}}/{{REPO_NAME}}"
  }
}