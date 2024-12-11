module Stratosphere.Bedrock.Flow.FlowConnectionProperty (
        module Exports, FlowConnectionProperty(..),
        mkFlowConnectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowConnectionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowConnectionProperty
  = FlowConnectionProperty {configuration :: (Prelude.Maybe FlowConnectionConfigurationProperty),
                            name :: (Value Prelude.Text),
                            source :: (Value Prelude.Text),
                            target :: (Value Prelude.Text),
                            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowConnectionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> FlowConnectionProperty
mkFlowConnectionProperty name source target type'
  = FlowConnectionProperty
      {name = name, source = source, target = target, type' = type',
       configuration = Prelude.Nothing}
instance ToResourceProperties FlowConnectionProperty where
  toResourceProperties FlowConnectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowConnection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Source" JSON..= source,
                            "Target" JSON..= target, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration]))}
instance JSON.ToJSON FlowConnectionProperty where
  toJSON FlowConnectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Source" JSON..= source,
               "Target" JSON..= target, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration])))
instance Property "Configuration" FlowConnectionProperty where
  type PropertyType "Configuration" FlowConnectionProperty = FlowConnectionConfigurationProperty
  set newValue FlowConnectionProperty {..}
    = FlowConnectionProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "Name" FlowConnectionProperty where
  type PropertyType "Name" FlowConnectionProperty = Value Prelude.Text
  set newValue FlowConnectionProperty {..}
    = FlowConnectionProperty {name = newValue, ..}
instance Property "Source" FlowConnectionProperty where
  type PropertyType "Source" FlowConnectionProperty = Value Prelude.Text
  set newValue FlowConnectionProperty {..}
    = FlowConnectionProperty {source = newValue, ..}
instance Property "Target" FlowConnectionProperty where
  type PropertyType "Target" FlowConnectionProperty = Value Prelude.Text
  set newValue FlowConnectionProperty {..}
    = FlowConnectionProperty {target = newValue, ..}
instance Property "Type" FlowConnectionProperty where
  type PropertyType "Type" FlowConnectionProperty = Value Prelude.Text
  set newValue FlowConnectionProperty {..}
    = FlowConnectionProperty {type' = newValue, ..}