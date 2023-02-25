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
  = SignatureValidityPeriodProperty {type' :: (Prelude.Maybe (Value Prelude.Text)),
                                     value :: (Prelude.Maybe (Value Prelude.Integer))}
mkSignatureValidityPeriodProperty ::
  SignatureValidityPeriodProperty
mkSignatureValidityPeriodProperty
  = SignatureValidityPeriodProperty
      {type' = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties SignatureValidityPeriodProperty where
  toResourceProperties SignatureValidityPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::Signer::SigningProfile.SignatureValidityPeriod",
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