module Stratosphere.Wisdom.KnowledgeBase.SeedUrlProperty (
        SeedUrlProperty(..), mkSeedUrlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SeedUrlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-seedurl.html>
    SeedUrlProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-seedurl.html#cfn-wisdom-knowledgebase-seedurl-url>
                     url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSeedUrlProperty :: SeedUrlProperty
mkSeedUrlProperty
  = SeedUrlProperty {haddock_workaround_ = (), url = Prelude.Nothing}
instance ToResourceProperties SeedUrlProperty where
  toResourceProperties SeedUrlProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.SeedUrl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON SeedUrlProperty where
  toJSON SeedUrlProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Url" Prelude.<$> url]))
instance Property "Url" SeedUrlProperty where
  type PropertyType "Url" SeedUrlProperty = Value Prelude.Text
  set newValue SeedUrlProperty {..}
    = SeedUrlProperty {url = Prelude.pure newValue, ..}