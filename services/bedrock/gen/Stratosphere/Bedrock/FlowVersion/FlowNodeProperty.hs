module Stratosphere.Bedrock.FlowVersion.FlowNodeProperty (
        module Exports, FlowNodeProperty(..), mkFlowNodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.FlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.FlowNodeInputProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.FlowNodeOutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowNodeProperty
  = FlowNodeProperty {configuration :: (Prelude.Maybe FlowNodeConfigurationProperty),
                      inputs :: (Prelude.Maybe [FlowNodeInputProperty]),
                      name :: (Value Prelude.Text),
                      outputs :: (Prelude.Maybe [FlowNodeOutputProperty]),
                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FlowNodeProperty
mkFlowNodeProperty name type'
  = FlowNodeProperty
      {name = name, type' = type', configuration = Prelude.Nothing,
       inputs = Prelude.Nothing, outputs = Prelude.Nothing}
instance ToResourceProperties FlowNodeProperty where
  toResourceProperties FlowNodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.FlowNode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Inputs" Prelude.<$> inputs,
                               (JSON..=) "Outputs" Prelude.<$> outputs]))}
instance JSON.ToJSON FlowNodeProperty where
  toJSON FlowNodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Inputs" Prelude.<$> inputs,
                  (JSON..=) "Outputs" Prelude.<$> outputs])))
instance Property "Configuration" FlowNodeProperty where
  type PropertyType "Configuration" FlowNodeProperty = FlowNodeConfigurationProperty
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {configuration = Prelude.pure newValue, ..}
instance Property "Inputs" FlowNodeProperty where
  type PropertyType "Inputs" FlowNodeProperty = [FlowNodeInputProperty]
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {inputs = Prelude.pure newValue, ..}
instance Property "Name" FlowNodeProperty where
  type PropertyType "Name" FlowNodeProperty = Value Prelude.Text
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {name = newValue, ..}
instance Property "Outputs" FlowNodeProperty where
  type PropertyType "Outputs" FlowNodeProperty = [FlowNodeOutputProperty]
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {outputs = Prelude.pure newValue, ..}
instance Property "Type" FlowNodeProperty where
  type PropertyType "Type" FlowNodeProperty = Value Prelude.Text
  set newValue FlowNodeProperty {..}
    = FlowNodeProperty {type' = newValue, ..}