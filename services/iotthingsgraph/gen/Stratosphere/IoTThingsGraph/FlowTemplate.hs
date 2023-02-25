module Stratosphere.IoTThingsGraph.FlowTemplate (
        module Exports, FlowTemplate(..), mkFlowTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTThingsGraph.FlowTemplate.DefinitionDocumentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowTemplate
  = FlowTemplate {compatibleNamespaceVersion :: (Prelude.Maybe (Value Prelude.Double)),
                  definition :: DefinitionDocumentProperty}
mkFlowTemplate :: DefinitionDocumentProperty -> FlowTemplate
mkFlowTemplate definition
  = FlowTemplate
      {definition = definition,
       compatibleNamespaceVersion = Prelude.Nothing}
instance ToResourceProperties FlowTemplate where
  toResourceProperties FlowTemplate {..}
    = ResourceProperties
        {awsType = "AWS::IoTThingsGraph::FlowTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition]
                           (Prelude.catMaybes
                              [(JSON..=) "CompatibleNamespaceVersion"
                                 Prelude.<$> compatibleNamespaceVersion]))}
instance JSON.ToJSON FlowTemplate where
  toJSON FlowTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition]
              (Prelude.catMaybes
                 [(JSON..=) "CompatibleNamespaceVersion"
                    Prelude.<$> compatibleNamespaceVersion])))
instance Property "CompatibleNamespaceVersion" FlowTemplate where
  type PropertyType "CompatibleNamespaceVersion" FlowTemplate = Value Prelude.Double
  set newValue FlowTemplate {..}
    = FlowTemplate
        {compatibleNamespaceVersion = Prelude.pure newValue, ..}
instance Property "Definition" FlowTemplate where
  type PropertyType "Definition" FlowTemplate = DefinitionDocumentProperty
  set newValue FlowTemplate {..}
    = FlowTemplate {definition = newValue, ..}