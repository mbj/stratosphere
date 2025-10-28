module Stratosphere.PCAConnectorAD.Template.ExtensionsV4Property (
        module Exports, ExtensionsV4Property(..), mkExtensionsV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ApplicationPoliciesProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsageProperty as Exports
import Stratosphere.ResourceProperties
data ExtensionsV4Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html>
    ExtensionsV4Property {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html#cfn-pcaconnectorad-template-extensionsv4-applicationpolicies>
                          applicationPolicies :: (Prelude.Maybe ApplicationPoliciesProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html#cfn-pcaconnectorad-template-extensionsv4-keyusage>
                          keyUsage :: KeyUsageProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtensionsV4Property :: KeyUsageProperty -> ExtensionsV4Property
mkExtensionsV4Property keyUsage
  = ExtensionsV4Property
      {haddock_workaround_ = (), keyUsage = keyUsage,
       applicationPolicies = Prelude.Nothing}
instance ToResourceProperties ExtensionsV4Property where
  toResourceProperties ExtensionsV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ExtensionsV4",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyUsage" JSON..= keyUsage]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationPolicies"
                                 Prelude.<$> applicationPolicies]))}
instance JSON.ToJSON ExtensionsV4Property where
  toJSON ExtensionsV4Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyUsage" JSON..= keyUsage]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationPolicies"
                    Prelude.<$> applicationPolicies])))
instance Property "ApplicationPolicies" ExtensionsV4Property where
  type PropertyType "ApplicationPolicies" ExtensionsV4Property = ApplicationPoliciesProperty
  set newValue ExtensionsV4Property {..}
    = ExtensionsV4Property
        {applicationPolicies = Prelude.pure newValue, ..}
instance Property "KeyUsage" ExtensionsV4Property where
  type PropertyType "KeyUsage" ExtensionsV4Property = KeyUsageProperty
  set newValue ExtensionsV4Property {..}
    = ExtensionsV4Property {keyUsage = newValue, ..}