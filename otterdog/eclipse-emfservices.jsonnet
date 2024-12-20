local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('modeling.emfservices', 'eclipse-emfservices') {
  settings+: {
    description: "Generic libraries extending the core EMF framework",
    name: "Eclipse EMF Services",
    blog: "https://projects.eclipse.org/projects/modeling.emfservices",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          requires_pull_request: false,
          requires_linear_history: true,
        },
      ],
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('emf-query') {
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://projects.eclipse.org/projects/modeling.emfservices",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          requires_pull_request: false,
          requires_linear_history: true,
        },
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('emf-transaction') {
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "EMF Transaction provides transactional semantics for (local) EMF model changes",
      has_projects: false,
      has_wiki: false,
      homepage: "https://projects.eclipse.org/projects/modeling.emfservices",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          requires_pull_request: false,
          requires_linear_history: true,
        },
      ],
      topics+: [
        "eclipse",
        "emf",
        "modeling"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('emf-validation') {
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "EMF Validation extends the core validation support of EMF",
      has_projects: false,
      has_wiki: false,
      homepage: "https://projects.eclipse.org/projects/modeling.emfservices",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          requires_pull_request: false,
          requires_linear_history: true,
        },
      ],
      topics+: [
        "eclipse",
        "emf",
        "modeling"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
  ],
}
