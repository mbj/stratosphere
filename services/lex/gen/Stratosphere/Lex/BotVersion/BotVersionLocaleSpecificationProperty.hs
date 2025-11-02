module Stratosphere.Lex.BotVersion.BotVersionLocaleSpecificationProperty (
        module Exports, BotVersionLocaleSpecificationProperty(..),
        mkBotVersionLocaleSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotVersion.BotVersionLocaleDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotVersionLocaleSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botversion-botversionlocalespecification.html>
    BotVersionLocaleSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botversion-botversionlocalespecification.html#cfn-lex-botversion-botversionlocalespecification-botversionlocaledetails>
                                           botVersionLocaleDetails :: BotVersionLocaleDetailsProperty,
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botversion-botversionlocalespecification.html#cfn-lex-botversion-botversionlocalespecification-localeid>
                                           localeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotVersionLocaleSpecificationProperty ::
  BotVersionLocaleDetailsProperty
  -> Value Prelude.Text -> BotVersionLocaleSpecificationProperty
mkBotVersionLocaleSpecificationProperty
  botVersionLocaleDetails
  localeId
  = BotVersionLocaleSpecificationProperty
      {haddock_workaround_ = (),
       botVersionLocaleDetails = botVersionLocaleDetails,
       localeId = localeId}
instance ToResourceProperties BotVersionLocaleSpecificationProperty where
  toResourceProperties BotVersionLocaleSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotVersion.BotVersionLocaleSpecification",
         supportsTags = Prelude.False,
         properties = ["BotVersionLocaleDetails"
                         JSON..= botVersionLocaleDetails,
                       "LocaleId" JSON..= localeId]}
instance JSON.ToJSON BotVersionLocaleSpecificationProperty where
  toJSON BotVersionLocaleSpecificationProperty {..}
    = JSON.object
        ["BotVersionLocaleDetails" JSON..= botVersionLocaleDetails,
         "LocaleId" JSON..= localeId]
instance Property "BotVersionLocaleDetails" BotVersionLocaleSpecificationProperty where
  type PropertyType "BotVersionLocaleDetails" BotVersionLocaleSpecificationProperty = BotVersionLocaleDetailsProperty
  set newValue BotVersionLocaleSpecificationProperty {..}
    = BotVersionLocaleSpecificationProperty
        {botVersionLocaleDetails = newValue, ..}
instance Property "LocaleId" BotVersionLocaleSpecificationProperty where
  type PropertyType "LocaleId" BotVersionLocaleSpecificationProperty = Value Prelude.Text
  set newValue BotVersionLocaleSpecificationProperty {..}
    = BotVersionLocaleSpecificationProperty {localeId = newValue, ..}