// Import template file.

local template = import "template_full.libsonnet";

// Set options.

local params = {
  use_lstm: true,
  bert_fine_tune: std.extVar("bert_fine_tune"),
  loss_weights: {          // Loss weights for the modules.
    ner: std.extVar('nw')
  },
  exact_match: std.extVar('em')
};

template(params)