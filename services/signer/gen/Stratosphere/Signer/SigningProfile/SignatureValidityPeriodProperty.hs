module Stratosphere.Signer.SigningProfile.SignatureValidityPeriodProperty (
        SignatureValidityPeriodProperty(..),
        mkSignatureValidityPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignatureValidityPeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-signer-signingprofile-signaturevalidityperiod.html>
    SignatureValidityPeriodProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-signer-signingprofile-signaturevalidityperiod.html#cfn-signer-signingprofile-signaturevalidityperiod-type>
                                     type' :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-signer-signingprofile-signaturevalidityperiod.html#cfn-signer-signingprofile-signaturevalidityperiod-value>
                                     value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignatureValidityPeriodProperty ::
  SignatureValidityPeriodProperty
mkSignatureValidityPeriodProperty
  = SignatureValidityPeriodProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties SignatureValidityPeriodProperty where
  toResourceProperties SignatureValidityPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::Signer::SigningProfile.SignatureValidityPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON SignatureValidityPeriodProperty where
  toJSON SignatureValidityPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Type" SignatureValidityPeriodProperty where
  type PropertyType "Type" SignatureValidityPeriodProperty = Value Prelude.Text
  set newValue SignatureValidityPeriodProperty {..}
    = SignatureValidityPeriodProperty
        {type' = Prelude.pure newValue, ..}
instance Property "Value" SignatureValidityPeriodProperty where
  type PropertyType "Value" SignatureValidityPeriodProperty = Value Prelude.Integer
  set newValue SignatureValidityPeriodProperty {..}
    = SignatureValidityPeriodProperty
        {value = Prelude.pure newValue, ..}