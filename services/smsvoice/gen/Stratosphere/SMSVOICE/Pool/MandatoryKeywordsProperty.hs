module Stratosphere.SMSVOICE.Pool.MandatoryKeywordsProperty (
        module Exports, MandatoryKeywordsProperty(..),
        mkMandatoryKeywordsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.Pool.MandatoryKeywordProperty as Exports
import Stratosphere.ResourceProperties
data MandatoryKeywordsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html>
    MandatoryKeywordsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html#cfn-smsvoice-pool-mandatorykeywords-help>
                               hELP :: MandatoryKeywordProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html#cfn-smsvoice-pool-mandatorykeywords-stop>
                               sTOP :: MandatoryKeywordProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMandatoryKeywordsProperty ::
  MandatoryKeywordProperty
  -> MandatoryKeywordProperty -> MandatoryKeywordsProperty
mkMandatoryKeywordsProperty hELP sTOP
  = MandatoryKeywordsProperty
      {haddock_workaround_ = (), hELP = hELP, sTOP = sTOP}
instance ToResourceProperties MandatoryKeywordsProperty where
  toResourceProperties MandatoryKeywordsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::Pool.MandatoryKeywords",
         supportsTags = Prelude.False,
         properties = ["HELP" JSON..= hELP, "STOP" JSON..= sTOP]}
instance JSON.ToJSON MandatoryKeywordsProperty where
  toJSON MandatoryKeywordsProperty {..}
    = JSON.object ["HELP" JSON..= hELP, "STOP" JSON..= sTOP]
instance Property "HELP" MandatoryKeywordsProperty where
  type PropertyType "HELP" MandatoryKeywordsProperty = MandatoryKeywordProperty
  set newValue MandatoryKeywordsProperty {..}
    = MandatoryKeywordsProperty {hELP = newValue, ..}
instance Property "STOP" MandatoryKeywordsProperty where
  type PropertyType "STOP" MandatoryKeywordsProperty = MandatoryKeywordProperty
  set newValue MandatoryKeywordsProperty {..}
    = MandatoryKeywordsProperty {sTOP = newValue, ..}