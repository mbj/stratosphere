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
  = PhoneNumber {countryCode :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 prefix :: (Prelude.Maybe (Value Prelude.Text)),
                 sourcePhoneNumberArn :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 targetArn :: (Value Prelude.Text),
                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhoneNumber :: Value Prelude.Text -> PhoneNumber
mkPhoneNumber targetArn
  = PhoneNumber
      {targetArn = targetArn, countryCode = Prelude.Nothing,
       description = Prelude.Nothing, prefix = Prelude.Nothing,
       sourcePhoneNumberArn = Prelude.Nothing, tags = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties PhoneNumber where
  toResourceProperties PhoneNumber {..}
    = ResourceProperties
        {awsType = "AWS::Connect::PhoneNumber",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CountryCode" Prelude.<$> countryCode,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "SourcePhoneNumberArn" Prelude.<$> sourcePhoneNumberArn,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON PhoneNumber where
  toJSON PhoneNumber {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "CountryCode" Prelude.<$> countryCode,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "SourcePhoneNumberArn" Prelude.<$> sourcePhoneNumberArn,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CountryCode" PhoneNumber where
  type PropertyType "CountryCode" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {countryCode = Prelude.pure newValue, ..}
instance Property "Description" PhoneNumber where
  type PropertyType "Description" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {description = Prelude.pure newValue, ..}
instance Property "Prefix" PhoneNumber where
  type PropertyType "Prefix" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {prefix = Prelude.pure newValue, ..}
instance Property "SourcePhoneNumberArn" PhoneNumber where
  type PropertyType "SourcePhoneNumberArn" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {sourcePhoneNumberArn = Prelude.pure newValue, ..}
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
  set newValue PhoneNumber {..}
    = PhoneNumber {type' = Prelude.pure newValue, ..}