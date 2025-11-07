module Stratosphere.QuickSight.CustomPermissions (
        module Exports, CustomPermissions(..), mkCustomPermissions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.CustomPermissions.CapabilitiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomPermissions
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-custompermissions.html>
    CustomPermissions {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-custompermissions.html#cfn-quicksight-custompermissions-awsaccountid>
                       awsAccountId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-custompermissions.html#cfn-quicksight-custompermissions-capabilities>
                       capabilities :: (Prelude.Maybe CapabilitiesProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-custompermissions.html#cfn-quicksight-custompermissions-custompermissionsname>
                       customPermissionsName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-custompermissions.html#cfn-quicksight-custompermissions-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPermissions ::
  Value Prelude.Text -> Value Prelude.Text -> CustomPermissions
mkCustomPermissions awsAccountId customPermissionsName
  = CustomPermissions
      {haddock_workaround_ = (), awsAccountId = awsAccountId,
       customPermissionsName = customPermissionsName,
       capabilities = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomPermissions where
  toResourceProperties CustomPermissions {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::CustomPermissions",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId,
                            "CustomPermissionsName" JSON..= customPermissionsName]
                           (Prelude.catMaybes
                              [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomPermissions where
  toJSON CustomPermissions {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId,
               "CustomPermissionsName" JSON..= customPermissionsName]
              (Prelude.catMaybes
                 [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AwsAccountId" CustomPermissions where
  type PropertyType "AwsAccountId" CustomPermissions = Value Prelude.Text
  set newValue CustomPermissions {..}
    = CustomPermissions {awsAccountId = newValue, ..}
instance Property "Capabilities" CustomPermissions where
  type PropertyType "Capabilities" CustomPermissions = CapabilitiesProperty
  set newValue CustomPermissions {..}
    = CustomPermissions {capabilities = Prelude.pure newValue, ..}
instance Property "CustomPermissionsName" CustomPermissions where
  type PropertyType "CustomPermissionsName" CustomPermissions = Value Prelude.Text
  set newValue CustomPermissions {..}
    = CustomPermissions {customPermissionsName = newValue, ..}
instance Property "Tags" CustomPermissions where
  type PropertyType "Tags" CustomPermissions = [Tag]
  set newValue CustomPermissions {..}
    = CustomPermissions {tags = Prelude.pure newValue, ..}