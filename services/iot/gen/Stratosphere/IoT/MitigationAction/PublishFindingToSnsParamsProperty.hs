module Stratosphere.IoT.MitigationAction.PublishFindingToSnsParamsProperty (
        PublishFindingToSnsParamsProperty(..),
        mkPublishFindingToSnsParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublishFindingToSnsParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-publishfindingtosnsparams.html>
    PublishFindingToSnsParamsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-publishfindingtosnsparams.html#cfn-iot-mitigationaction-publishfindingtosnsparams-topicarn>
                                       topicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublishFindingToSnsParamsProperty ::
  Value Prelude.Text -> PublishFindingToSnsParamsProperty
mkPublishFindingToSnsParamsProperty topicArn
  = PublishFindingToSnsParamsProperty
      {haddock_workaround_ = (), topicArn = topicArn}
instance ToResourceProperties PublishFindingToSnsParamsProperty where
  toResourceProperties PublishFindingToSnsParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.PublishFindingToSnsParams",
         supportsTags = Prelude.False,
         properties = ["TopicArn" JSON..= topicArn]}
instance JSON.ToJSON PublishFindingToSnsParamsProperty where
  toJSON PublishFindingToSnsParamsProperty {..}
    = JSON.object ["TopicArn" JSON..= topicArn]
instance Property "TopicArn" PublishFindingToSnsParamsProperty where
  type PropertyType "TopicArn" PublishFindingToSnsParamsProperty = Value Prelude.Text
  set newValue PublishFindingToSnsParamsProperty {..}
    = PublishFindingToSnsParamsProperty {topicArn = newValue, ..}