module Stratosphere.S3Outposts.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Outposts.AccessPoint.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPoint
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-accesspoint.html>
    AccessPoint {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-accesspoint.html#cfn-s3outposts-accesspoint-bucket>
                 bucket :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-accesspoint.html#cfn-s3outposts-accesspoint-name>
                 name :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-accesspoint.html#cfn-s3outposts-accesspoint-policy>
                 policy :: (Prelude.Maybe JSON.Object),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3outposts-accesspoint.html#cfn-s3outposts-accesspoint-vpcconfiguration>
                 vpcConfiguration :: VpcConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPoint ::
  Value Prelude.Text
  -> Value Prelude.Text -> VpcConfigurationProperty -> AccessPoint
mkAccessPoint bucket name vpcConfiguration
  = AccessPoint
      {bucket = bucket, name = name, vpcConfiguration = vpcConfiguration,
       policy = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::AccessPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "Name" JSON..= name,
                            "VpcConfiguration" JSON..= vpcConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Policy" Prelude.<$> policy]))}
instance JSON.ToJSON AccessPoint where
  toJSON AccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "Name" JSON..= name,
               "VpcConfiguration" JSON..= vpcConfiguration]
              (Prelude.catMaybes [(JSON..=) "Policy" Prelude.<$> policy])))
instance Property "Bucket" AccessPoint where
  type PropertyType "Bucket" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..} = AccessPoint {bucket = newValue, ..}
instance Property "Name" AccessPoint where
  type PropertyType "Name" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..} = AccessPoint {name = newValue, ..}
instance Property "Policy" AccessPoint where
  type PropertyType "Policy" AccessPoint = JSON.Object
  set newValue AccessPoint {..}
    = AccessPoint {policy = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" AccessPoint where
  type PropertyType "VpcConfiguration" AccessPoint = VpcConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint {vpcConfiguration = newValue, ..}