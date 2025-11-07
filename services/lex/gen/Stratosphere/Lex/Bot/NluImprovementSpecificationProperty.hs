module Stratosphere.Lex.Bot.NluImprovementSpecificationProperty (
        NluImprovementSpecificationProperty(..),
        mkNluImprovementSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NluImprovementSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-nluimprovementspecification.html>
    NluImprovementSpecificationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-nluimprovementspecification.html#cfn-lex-bot-nluimprovementspecification-enabled>
                                         enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNluImprovementSpecificationProperty ::
  Value Prelude.Bool -> NluImprovementSpecificationProperty
mkNluImprovementSpecificationProperty enabled
  = NluImprovementSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties NluImprovementSpecificationProperty where
  toResourceProperties NluImprovementSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.NluImprovementSpecification",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON NluImprovementSpecificationProperty where
  toJSON NluImprovementSpecificationProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" NluImprovementSpecificationProperty where
  type PropertyType "Enabled" NluImprovementSpecificationProperty = Value Prelude.Bool
  set newValue NluImprovementSpecificationProperty {..}
    = NluImprovementSpecificationProperty {enabled = newValue, ..}