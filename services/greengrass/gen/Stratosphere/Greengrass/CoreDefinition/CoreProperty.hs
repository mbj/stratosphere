module Stratosphere.Greengrass.CoreDefinition.CoreProperty (
        CoreProperty(..), mkCoreProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html>
    CoreProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-certificatearn>
                  certificateArn :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-id>
                  id :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-syncshadow>
                  syncShadow :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-thingarn>
                  thingArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> CoreProperty
mkCoreProperty certificateArn id thingArn
  = CoreProperty
      {certificateArn = certificateArn, id = id, thingArn = thingArn,
       syncShadow = Prelude.Nothing}
instance ToResourceProperties CoreProperty where
  toResourceProperties CoreProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::CoreDefinition.Core",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateArn" JSON..= certificateArn, "Id" JSON..= id,
                            "ThingArn" JSON..= thingArn]
                           (Prelude.catMaybes
                              [(JSON..=) "SyncShadow" Prelude.<$> syncShadow]))}
instance JSON.ToJSON CoreProperty where
  toJSON CoreProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateArn" JSON..= certificateArn, "Id" JSON..= id,
               "ThingArn" JSON..= thingArn]
              (Prelude.catMaybes
                 [(JSON..=) "SyncShadow" Prelude.<$> syncShadow])))
instance Property "CertificateArn" CoreProperty where
  type PropertyType "CertificateArn" CoreProperty = Value Prelude.Text
  set newValue CoreProperty {..}
    = CoreProperty {certificateArn = newValue, ..}
instance Property "Id" CoreProperty where
  type PropertyType "Id" CoreProperty = Value Prelude.Text
  set newValue CoreProperty {..} = CoreProperty {id = newValue, ..}
instance Property "SyncShadow" CoreProperty where
  type PropertyType "SyncShadow" CoreProperty = Value Prelude.Bool
  set newValue CoreProperty {..}
    = CoreProperty {syncShadow = Prelude.pure newValue, ..}
instance Property "ThingArn" CoreProperty where
  type PropertyType "ThingArn" CoreProperty = Value Prelude.Text
  set newValue CoreProperty {..}
    = CoreProperty {thingArn = newValue, ..}