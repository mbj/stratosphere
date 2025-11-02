module Stratosphere.Lightsail.Instance.AddOnProperty (
        module Exports, AddOnProperty(..), mkAddOnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.AutoSnapshotAddOnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddOnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-addon.html>
    AddOnProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-addon.html#cfn-lightsail-instance-addon-addontype>
                   addOnType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-addon.html#cfn-lightsail-instance-addon-autosnapshotaddonrequest>
                   autoSnapshotAddOnRequest :: (Prelude.Maybe AutoSnapshotAddOnProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-addon.html#cfn-lightsail-instance-addon-status>
                   status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddOnProperty :: Value Prelude.Text -> AddOnProperty
mkAddOnProperty addOnType
  = AddOnProperty
      {haddock_workaround_ = (), addOnType = addOnType,
       autoSnapshotAddOnRequest = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties AddOnProperty where
  toResourceProperties AddOnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.AddOn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AddOnType" JSON..= addOnType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoSnapshotAddOnRequest"
                                 Prelude.<$> autoSnapshotAddOnRequest,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON AddOnProperty where
  toJSON AddOnProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AddOnType" JSON..= addOnType]
              (Prelude.catMaybes
                 [(JSON..=) "AutoSnapshotAddOnRequest"
                    Prelude.<$> autoSnapshotAddOnRequest,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "AddOnType" AddOnProperty where
  type PropertyType "AddOnType" AddOnProperty = Value Prelude.Text
  set newValue AddOnProperty {..}
    = AddOnProperty {addOnType = newValue, ..}
instance Property "AutoSnapshotAddOnRequest" AddOnProperty where
  type PropertyType "AutoSnapshotAddOnRequest" AddOnProperty = AutoSnapshotAddOnProperty
  set newValue AddOnProperty {..}
    = AddOnProperty
        {autoSnapshotAddOnRequest = Prelude.pure newValue, ..}
instance Property "Status" AddOnProperty where
  type PropertyType "Status" AddOnProperty = Value Prelude.Text
  set newValue AddOnProperty {..}
    = AddOnProperty {status = Prelude.pure newValue, ..}