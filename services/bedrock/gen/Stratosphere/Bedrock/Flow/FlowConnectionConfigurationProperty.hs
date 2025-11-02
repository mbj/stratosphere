module Stratosphere.Bedrock.Flow.FlowConnectionConfigurationProperty (
        module Exports, FlowConnectionConfigurationProperty(..),
        mkFlowConnectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowConditionalConnectionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FlowDataConnectionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FlowConnectionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html>
    FlowConnectionConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html#cfn-bedrock-flow-flowconnectionconfiguration-conditional>
                                         conditional :: (Prelude.Maybe FlowConditionalConnectionConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html#cfn-bedrock-flow-flowconnectionconfiguration-data>
                                         data' :: (Prelude.Maybe FlowDataConnectionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowConnectionConfigurationProperty ::
  FlowConnectionConfigurationProperty
mkFlowConnectionConfigurationProperty
  = FlowConnectionConfigurationProperty
      {haddock_workaround_ = (), conditional = Prelude.Nothing,
       data' = Prelude.Nothing}
instance ToResourceProperties FlowConnectionConfigurationProperty where
  toResourceProperties FlowConnectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowConnectionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Conditional" Prelude.<$> conditional,
                            (JSON..=) "Data" Prelude.<$> data'])}
instance JSON.ToJSON FlowConnectionConfigurationProperty where
  toJSON FlowConnectionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Conditional" Prelude.<$> conditional,
               (JSON..=) "Data" Prelude.<$> data']))
instance Property "Conditional" FlowConnectionConfigurationProperty where
  type PropertyType "Conditional" FlowConnectionConfigurationProperty = FlowConditionalConnectionConfigurationProperty
  set newValue FlowConnectionConfigurationProperty {..}
    = FlowConnectionConfigurationProperty
        {conditional = Prelude.pure newValue, ..}
instance Property "Data" FlowConnectionConfigurationProperty where
  type PropertyType "Data" FlowConnectionConfigurationProperty = FlowDataConnectionConfigurationProperty
  set newValue FlowConnectionConfigurationProperty {..}
    = FlowConnectionConfigurationProperty
        {data' = Prelude.pure newValue, ..}