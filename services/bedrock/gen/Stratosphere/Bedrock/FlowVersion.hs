module Stratosphere.Bedrock.FlowVersion (
        FlowVersion(..), mkFlowVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowVersion
  = FlowVersion {description :: (Prelude.Maybe (Value Prelude.Text)),
                 flowArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowVersion :: Value Prelude.Text -> FlowVersion
mkFlowVersion flowArn
  = FlowVersion {flowArn = flowArn, description = Prelude.Nothing}
instance ToResourceProperties FlowVersion where
  toResourceProperties FlowVersion {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowArn" JSON..= flowArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON FlowVersion where
  toJSON FlowVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowArn" JSON..= flowArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" FlowVersion where
  type PropertyType "Description" FlowVersion = Value Prelude.Text
  set newValue FlowVersion {..}
    = FlowVersion {description = Prelude.pure newValue, ..}
instance Property "FlowArn" FlowVersion where
  type PropertyType "FlowArn" FlowVersion = Value Prelude.Text
  set newValue FlowVersion {..}
    = FlowVersion {flowArn = newValue, ..}