@Library('jenkins-shared-lib') _   // load shared library

terraformPipeline(
    tfVersion: '1.6.6',
    tfWorkspace: 'default',
    awsCredsId: 'aws-credentials-id',
    gitRepo: 'https://github.com/your-org/terraform-infra.git',
    gitBranch: 'main',
    autoApply: false   // change to true if you want auto apply
)
