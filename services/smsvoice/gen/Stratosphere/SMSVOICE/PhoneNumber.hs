module Stratosphere.SMSVOICE.PhoneNumber (
        module Exports, PhoneNumber(..), mkPhoneNumber
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.PhoneNumber.MandatoryKeywordsProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.PhoneNumber.OptionalKeywordProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.PhoneNumber.TwoWayProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PhoneNumber
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html>
    PhoneNumber {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-deletionprotectionenabled>
                 deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-isocountrycode>
                 isoCountryCode :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-mandatorykeywords>
                 mandatoryKeywords :: MandatoryKeywordsProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-numbercapabilities>
                 numberCapabilities :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-numbertype>
                 numberType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-optoutlistname>
                 optOutListName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-optionalkeywords>
                 optionalKeywords :: (Prelude.Maybe [OptionalKeywordProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-selfmanagedoptoutsenabled>
                 selfManagedOptOutsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-phonenumber.html#cfn-smsvoice-phonenumber-twoway>
                 twoWay :: (Prelude.Maybe TwoWayProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhoneNumber ::
  Value Prelude.Text
  -> MandatoryKeywordsProperty
     -> ValueList Prelude.Text -> Value Prelude.Text -> PhoneNumber
mkPhoneNumber
  isoCountryCode
  mandatoryKeywords
  numberCapabilities
  numberType
  = PhoneNumber
      {haddock_workaround_ = (), isoCountryCode = isoCountryCode,
       mandatoryKeywords = mandatoryKeywords,
       numberCapabilities = numberCapabilities, numberType = numberType,
       deletionProtectionEnabled = Prelude.Nothing,
       optOutListName = Prelude.Nothing,
       optionalKeywords = Prelude.Nothing,
       selfManagedOptOutsEnabled = Prelude.Nothing,
       tags = Prelude.Nothing, twoWay = Prelude.Nothing}
instance ToResourceProperties PhoneNumber where
  toResourceProperties PhoneNumber {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::PhoneNumber",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IsoCountryCode" JSON..= isoCountryCode,
                            "MandatoryKeywords" JSON..= mandatoryKeywords,
                            "NumberCapabilities" JSON..= numberCapabilities,
                            "NumberType" JSON..= numberType]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtectionEnabled"
                                 Prelude.<$> deletionProtectionEnabled,
                               (JSON..=) "OptOutListName" Prelude.<$> optOutListName,
                               (JSON..=) "OptionalKeywords" Prelude.<$> optionalKeywords,
                               (JSON..=) "SelfManagedOptOutsEnabled"
                                 Prelude.<$> selfManagedOptOutsEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TwoWay" Prelude.<$> twoWay]))}
instance JSON.ToJSON PhoneNumber where
  toJSON PhoneNumber {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IsoCountryCode" JSON..= isoCountryCode,
               "MandatoryKeywords" JSON..= mandatoryKeywords,
               "NumberCapabilities" JSON..= numberCapabilities,
               "NumberType" JSON..= numberType]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtectionEnabled"
                    Prelude.<$> deletionProtectionEnabled,
                  (JSON..=) "OptOutListName" Prelude.<$> optOutListName,
                  (JSON..=) "OptionalKeywords" Prelude.<$> optionalKeywords,
                  (JSON..=) "SelfManagedOptOutsEnabled"
                    Prelude.<$> selfManagedOptOutsEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TwoWay" Prelude.<$> twoWay])))
instance Property "DeletionProtectionEnabled" PhoneNumber where
  type PropertyType "DeletionProtectionEnabled" PhoneNumber = Value Prelude.Bool
  set newValue PhoneNumber {..}
    = PhoneNumber
        {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "IsoCountryCode" PhoneNumber where
  type PropertyType "IsoCountryCode" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {isoCountryCode = newValue, ..}
instance Property "MandatoryKeywords" PhoneNumber where
  type PropertyType "MandatoryKeywords" PhoneNumber = MandatoryKeywordsProperty
  set newValue PhoneNumber {..}
    = PhoneNumber {mandatoryKeywords = newValue, ..}
instance Property "NumberCapabilities" PhoneNumber where
  type PropertyType "NumberCapabilities" PhoneNumber = ValueList Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {numberCapabilities = newValue, ..}
instance Property "NumberType" PhoneNumber where
  type PropertyType "NumberType" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {numberType = newValue, ..}
instance Property "OptOutListName" PhoneNumber where
  type PropertyType "OptOutListName" PhoneNumber = Value Prelude.Text
  set newValue PhoneNumber {..}
    = PhoneNumber {optOutListName = Prelude.pure newValue, ..}
instance Property "OptionalKeywords" PhoneNumber where
  type PropertyType "OptionalKeywords" PhoneNumber = [OptionalKeywordProperty]
  set newValue PhoneNumber {..}
    = PhoneNumber {optionalKeywords = Prelude.pure newValue, ..}
instance Property "SelfManagedOptOutsEnabled" PhoneNumber where
  type PropertyType "SelfManagedOptOutsEnabled" PhoneNumber = Value Prelude.Bool
  set newValue PhoneNumber {..}
    = PhoneNumber
        {selfManagedOptOutsEnabled = Prelude.pure newValue, ..}
instance Property "Tags" PhoneNumber where
  type PropertyType "Tags" PhoneNumber = [Tag]
  set newValue PhoneNumber {..}
    = PhoneNumber {tags = Prelude.pure newValue, ..}
instance Property "TwoWay" PhoneNumber where
  type PropertyType "TwoWay" PhoneNumber = TwoWayProperty
  set newValue PhoneNumber {..}
    = PhoneNumber {twoWay = Prelude.pure newValue, ..}