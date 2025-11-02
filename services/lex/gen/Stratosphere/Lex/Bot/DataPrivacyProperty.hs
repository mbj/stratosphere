module Stratosphere.Lex.Bot.DataPrivacyProperty (
        DataPrivacyProperty(..), mkDataPrivacyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPrivacyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dataprivacy.html>
    DataPrivacyProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dataprivacy.html#cfn-lex-bot-dataprivacy-childdirected>
                         childDirected :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPrivacyProperty :: Value Prelude.Bool -> DataPrivacyProperty
mkDataPrivacyProperty childDirected
  = DataPrivacyProperty
      {haddock_workaround_ = (), childDirected = childDirected}
instance ToResourceProperties DataPrivacyProperty where
  toResourceProperties DataPrivacyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DataPrivacy",
         supportsTags = Prelude.False,
         properties = ["ChildDirected" JSON..= childDirected]}
instance JSON.ToJSON DataPrivacyProperty where
  toJSON DataPrivacyProperty {..}
    = JSON.object ["ChildDirected" JSON..= childDirected]
instance Property "ChildDirected" DataPrivacyProperty where
  type PropertyType "ChildDirected" DataPrivacyProperty = Value Prelude.Bool
  set newValue DataPrivacyProperty {..}
    = DataPrivacyProperty {childDirected = newValue, ..}