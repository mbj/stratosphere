module Stratosphere.IoT.TopicRule.IotSiteWiseActionProperty (
        module Exports, IotSiteWiseActionProperty(..),
        mkIotSiteWiseActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.PutAssetPropertyValueEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotSiteWiseActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html>
    IotSiteWiseActionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-putassetpropertyvalueentries>
                               putAssetPropertyValueEntries :: [PutAssetPropertyValueEntryProperty],
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-iotsitewiseaction.html#cfn-iot-topicrule-iotsitewiseaction-rolearn>
                               roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotSiteWiseActionProperty ::
  [PutAssetPropertyValueEntryProperty]
  -> Value Prelude.Text -> IotSiteWiseActionProperty
mkIotSiteWiseActionProperty putAssetPropertyValueEntries roleArn
  = IotSiteWiseActionProperty
      {haddock_workaround_ = (),
       putAssetPropertyValueEntries = putAssetPropertyValueEntries,
       roleArn = roleArn}
instance ToResourceProperties IotSiteWiseActionProperty where
  toResourceProperties IotSiteWiseActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.IotSiteWiseAction",
         supportsTags = Prelude.False,
         properties = ["PutAssetPropertyValueEntries"
                         JSON..= putAssetPropertyValueEntries,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON IotSiteWiseActionProperty where
  toJSON IotSiteWiseActionProperty {..}
    = JSON.object
        ["PutAssetPropertyValueEntries"
           JSON..= putAssetPropertyValueEntries,
         "RoleArn" JSON..= roleArn]
instance Property "PutAssetPropertyValueEntries" IotSiteWiseActionProperty where
  type PropertyType "PutAssetPropertyValueEntries" IotSiteWiseActionProperty = [PutAssetPropertyValueEntryProperty]
  set newValue IotSiteWiseActionProperty {..}
    = IotSiteWiseActionProperty
        {putAssetPropertyValueEntries = newValue, ..}
instance Property "RoleArn" IotSiteWiseActionProperty where
  type PropertyType "RoleArn" IotSiteWiseActionProperty = Value Prelude.Text
  set newValue IotSiteWiseActionProperty {..}
    = IotSiteWiseActionProperty {roleArn = newValue, ..}