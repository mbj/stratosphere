module Stratosphere.Panorama.ApplicationInstance (
        module Exports, ApplicationInstance(..), mkApplicationInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Panorama.ApplicationInstance.ManifestOverridesPayloadProperty as Exports
import {-# SOURCE #-} Stratosphere.Panorama.ApplicationInstance.ManifestPayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ApplicationInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html>
    ApplicationInstance {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-applicationinstanceidtoreplace>
                         applicationInstanceIdToReplace :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-defaultruntimecontextdevice>
                         defaultRuntimeContextDevice :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-manifestoverridespayload>
                         manifestOverridesPayload :: (Prelude.Maybe ManifestOverridesPayloadProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-manifestpayload>
                         manifestPayload :: ManifestPayloadProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-name>
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-runtimerolearn>
                         runtimeRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-applicationinstance.html#cfn-panorama-applicationinstance-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationInstance ::
  Value Prelude.Text
  -> ManifestPayloadProperty -> ApplicationInstance
mkApplicationInstance defaultRuntimeContextDevice manifestPayload
  = ApplicationInstance
      {haddock_workaround_ = (),
       defaultRuntimeContextDevice = defaultRuntimeContextDevice,
       manifestPayload = manifestPayload,
       applicationInstanceIdToReplace = Prelude.Nothing,
       description = Prelude.Nothing,
       manifestOverridesPayload = Prelude.Nothing, name = Prelude.Nothing,
       runtimeRoleArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ApplicationInstance where
  toResourceProperties ApplicationInstance {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::ApplicationInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultRuntimeContextDevice" JSON..= defaultRuntimeContextDevice,
                            "ManifestPayload" JSON..= manifestPayload]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationInstanceIdToReplace"
                                 Prelude.<$> applicationInstanceIdToReplace,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ManifestOverridesPayload"
                                 Prelude.<$> manifestOverridesPayload,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RuntimeRoleArn" Prelude.<$> runtimeRoleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ApplicationInstance where
  toJSON ApplicationInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultRuntimeContextDevice" JSON..= defaultRuntimeContextDevice,
               "ManifestPayload" JSON..= manifestPayload]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationInstanceIdToReplace"
                    Prelude.<$> applicationInstanceIdToReplace,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ManifestOverridesPayload"
                    Prelude.<$> manifestOverridesPayload,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RuntimeRoleArn" Prelude.<$> runtimeRoleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationInstanceIdToReplace" ApplicationInstance where
  type PropertyType "ApplicationInstanceIdToReplace" ApplicationInstance = Value Prelude.Text
  set newValue ApplicationInstance {..}
    = ApplicationInstance
        {applicationInstanceIdToReplace = Prelude.pure newValue, ..}
instance Property "DefaultRuntimeContextDevice" ApplicationInstance where
  type PropertyType "DefaultRuntimeContextDevice" ApplicationInstance = Value Prelude.Text
  set newValue ApplicationInstance {..}
    = ApplicationInstance {defaultRuntimeContextDevice = newValue, ..}
instance Property "Description" ApplicationInstance where
  type PropertyType "Description" ApplicationInstance = Value Prelude.Text
  set newValue ApplicationInstance {..}
    = ApplicationInstance {description = Prelude.pure newValue, ..}
instance Property "ManifestOverridesPayload" ApplicationInstance where
  type PropertyType "ManifestOverridesPayload" ApplicationInstance = ManifestOverridesPayloadProperty
  set newValue ApplicationInstance {..}
    = ApplicationInstance
        {manifestOverridesPayload = Prelude.pure newValue, ..}
instance Property "ManifestPayload" ApplicationInstance where
  type PropertyType "ManifestPayload" ApplicationInstance = ManifestPayloadProperty
  set newValue ApplicationInstance {..}
    = ApplicationInstance {manifestPayload = newValue, ..}
instance Property "Name" ApplicationInstance where
  type PropertyType "Name" ApplicationInstance = Value Prelude.Text
  set newValue ApplicationInstance {..}
    = ApplicationInstance {name = Prelude.pure newValue, ..}
instance Property "RuntimeRoleArn" ApplicationInstance where
  type PropertyType "RuntimeRoleArn" ApplicationInstance = Value Prelude.Text
  set newValue ApplicationInstance {..}
    = ApplicationInstance {runtimeRoleArn = Prelude.pure newValue, ..}
instance Property "Tags" ApplicationInstance where
  type PropertyType "Tags" ApplicationInstance = [Tag]
  set newValue ApplicationInstance {..}
    = ApplicationInstance {tags = Prelude.pure newValue, ..}