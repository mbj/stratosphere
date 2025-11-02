module Stratosphere.ACMPCA.CertificateAuthority.AccessMethodProperty (
        AccessMethodProperty(..), mkAccessMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessMethodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessmethod.html>
    AccessMethodProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessmethod.html#cfn-acmpca-certificateauthority-accessmethod-accessmethodtype>
                          accessMethodType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-accessmethod.html#cfn-acmpca-certificateauthority-accessmethod-customobjectidentifier>
                          customObjectIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessMethodProperty :: AccessMethodProperty
mkAccessMethodProperty
  = AccessMethodProperty
      {haddock_workaround_ = (), accessMethodType = Prelude.Nothing,
       customObjectIdentifier = Prelude.Nothing}
instance ToResourceProperties AccessMethodProperty where
  toResourceProperties AccessMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.AccessMethod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessMethodType" Prelude.<$> accessMethodType,
                            (JSON..=) "CustomObjectIdentifier"
                              Prelude.<$> customObjectIdentifier])}
instance JSON.ToJSON AccessMethodProperty where
  toJSON AccessMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessMethodType" Prelude.<$> accessMethodType,
               (JSON..=) "CustomObjectIdentifier"
                 Prelude.<$> customObjectIdentifier]))
instance Property "AccessMethodType" AccessMethodProperty where
  type PropertyType "AccessMethodType" AccessMethodProperty = Value Prelude.Text
  set newValue AccessMethodProperty {..}
    = AccessMethodProperty
        {accessMethodType = Prelude.pure newValue, ..}
instance Property "CustomObjectIdentifier" AccessMethodProperty where
  type PropertyType "CustomObjectIdentifier" AccessMethodProperty = Value Prelude.Text
  set newValue AccessMethodProperty {..}
    = AccessMethodProperty
        {customObjectIdentifier = Prelude.pure newValue, ..}