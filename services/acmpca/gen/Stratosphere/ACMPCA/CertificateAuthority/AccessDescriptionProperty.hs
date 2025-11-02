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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html>
    AccessDescriptionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html#cfn-acmpca-certificateauthority-accessdescription-accesslocation>
                               accessLocation :: GeneralNameProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessdescription.html#cfn-acmpca-certificateauthority-accessdescription-accessmethod>
                               accessMethod :: AccessMethodProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessDescriptionProperty ::
  GeneralNameProperty
  -> AccessMethodProperty -> AccessDescriptionProperty
mkAccessDescriptionProperty accessLocation accessMethod
  = AccessDescriptionProperty
      {haddock_workaround_ = (), accessLocation = accessLocation,
       accessMethod = accessMethod}
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