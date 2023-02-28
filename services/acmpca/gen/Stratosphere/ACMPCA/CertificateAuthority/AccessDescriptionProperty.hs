module Stratosphere.ACMPCA.CertificateAuthority.AccessDescriptionProperty (
        module Exports, AccessDescriptionProperty(..),
        mkAccessDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.AccessMethodProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.CertificateAuthority.GeneralNameProperty as Exports
import Stratosphere.ResourceProperties
data AccessDescriptionProperty
  = AccessDescriptionProperty {accessLocation :: GeneralNameProperty,
                               accessMethod :: AccessMethodProperty}
mkAccessDescriptionProperty ::
  GeneralNameProperty
  -> AccessMethodProperty -> AccessDescriptionProperty
mkAccessDescriptionProperty accessLocation accessMethod
  = AccessDescriptionProperty
      {accessLocation = accessLocation, accessMethod = accessMethod}
instance ToResourceProperties AccessDescriptionProperty where
  toResourceProperties AccessDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.AccessDescription",
         supportsTags = Prelude.False,
         properties = ["AccessLocation" JSON..= accessLocation,
                       "AccessMethod" JSON..= accessMethod]}
instance JSON.ToJSON AccessDescriptionProperty where
  toJSON AccessDescriptionProperty {..}
    = JSON.object
        ["AccessLocation" JSON..= accessLocation,
         "AccessMethod" JSON..= accessMethod]
instance Property "AccessLocation" AccessDescriptionProperty where
  type PropertyType "AccessLocation" AccessDescriptionProperty = GeneralNameProperty
  set newValue AccessDescriptionProperty {..}
    = AccessDescriptionProperty {accessLocation = newValue, ..}
instance Property "AccessMethod" AccessDescriptionProperty where
  type PropertyType "AccessMethod" AccessDescriptionProperty = AccessMethodProperty
  set newValue AccessDescriptionProperty {..}
    = AccessDescriptionProperty {accessMethod = newValue, ..}