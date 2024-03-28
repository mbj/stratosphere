module Stratosphere.PCAConnectorAD.Template.ExtensionsV2Property (
        module Exports, ExtensionsV2Property(..), mkExtensionsV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ApplicationPoliciesProperty as Exports
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsageProperty as Exports
import Stratosphere.ResourceProperties
data ExtensionsV2Property
  = ExtensionsV2Property {applicationPolicies :: (Prelude.Maybe ApplicationPoliciesProperty),
                          keyUsage :: KeyUsageProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtensionsV2Property :: KeyUsageProperty -> ExtensionsV2Property
mkExtensionsV2Property keyUsage
  = ExtensionsV2Property
      {keyUsage = keyUsage, applicationPolicies = Prelude.Nothing}
instance ToResourceProperties ExtensionsV2Property where
  toResourceProperties ExtensionsV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ExtensionsV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyUsage" JSON..= keyUsage]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationPolicies"
                                 Prelude.<$> applicationPolicies]))}
instance JSON.ToJSON ExtensionsV2Property where
  toJSON ExtensionsV2Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyUsage" JSON..= keyUsage]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationPolicies"
                    Prelude.<$> applicationPolicies])))
instance Property "ApplicationPolicies" ExtensionsV2Property where
  type PropertyType "ApplicationPolicies" ExtensionsV2Property = ApplicationPoliciesProperty
  set newValue ExtensionsV2Property {..}
    = ExtensionsV2Property
        {applicationPolicies = Prelude.pure newValue, ..}
instance Property "KeyUsage" ExtensionsV2Property where
  type PropertyType "KeyUsage" ExtensionsV2Property = KeyUsageProperty
  set newValue ExtensionsV2Property {..}
    = ExtensionsV2Property {keyUsage = newValue, ..}