module Stratosphere.PCAConnectorAD.Template.ExtensionsV3Property (
        module Exports, ExtensionsV3Property(..), mkExtensionsV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ApplicationPoliciesProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsageProperty as Exports
import Stratosphere.ResourceProperties
data ExtensionsV3Property
  = ExtensionsV3Property {applicationPolicies :: (Prelude.Maybe ApplicationPoliciesProperty),
                          keyUsage :: KeyUsageProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtensionsV3Property :: KeyUsageProperty -> ExtensionsV3Property
mkExtensionsV3Property keyUsage
  = ExtensionsV3Property
      {keyUsage = keyUsage, applicationPolicies = Prelude.Nothing}
instance ToResourceProperties ExtensionsV3Property where
  toResourceProperties ExtensionsV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ExtensionsV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyUsage" JSON..= keyUsage]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationPolicies"
                                 Prelude.<$> applicationPolicies]))}
instance JSON.ToJSON ExtensionsV3Property where
  toJSON ExtensionsV3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyUsage" JSON..= keyUsage]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationPolicies"
                    Prelude.<$> applicationPolicies])))
instance Property "ApplicationPolicies" ExtensionsV3Property where
  type PropertyType "ApplicationPolicies" ExtensionsV3Property = ApplicationPoliciesProperty
  set newValue ExtensionsV3Property {..}
    = ExtensionsV3Property
        {applicationPolicies = Prelude.pure newValue, ..}
instance Property "KeyUsage" ExtensionsV3Property where
  type PropertyType "KeyUsage" ExtensionsV3Property = KeyUsageProperty
  set newValue ExtensionsV3Property {..}
    = ExtensionsV3Property {keyUsage = newValue, ..}