module Stratosphere.Connect.PhoneNumber (
        PhoneNumber(..), mkPhoneNumber
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PhoneNumber
  = PhoneNumber {countryCode :: (Value Prelude.Text),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 prefix :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 targetArn :: (Value Prelude.Text),
                 type' :: (Value Prelude.Text)}
mkPhoneNumber ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PhoneNumber
mkPhoneNumber countryCode targetArn type'
  = PhoneNumber
      {countryCode = countryCode, targetArn = targetArn, type' = type',
       description = Prelude.Nothing, prefix = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PhoneNumber where
  toResourceProperties PhoneNumber {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PhoneNumber",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CountryCode" JSON..= countryCode, "TargetArn" JSON..= targetArn,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PhoneNumber where
  toJSON PhoneNumber {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CountryCode" JSON..= countryCode, "TargetArn" JSON..= targetArn,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CountryCode" PhoneNumber where
  type PropertyType "CountryCode" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {countryCode = newValue, ..}
instance Property "Description" PhoneNumber where
  type PropertyType "Description" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {description = Prelude.pure newValue, ..}
instance Property "Prefix" PhoneNumber where
  type PropertyType "Prefix" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {prefix = Prelude.pure newValue, ..}
instance Property "Tags" PhoneNumber where
  type PropertyType "Tags" PhoneNumber = [Tag]
  set newValue PhoneNumber {..}
    = PhoneNumber {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" PhoneNumber where
  type PropertyType "TargetArn" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {targetArn = newValue, ..}
instance Property "Type" PhoneNumber where
  type PropertyType "Type" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..} = PhoneNumber {type' = newValue, ..}