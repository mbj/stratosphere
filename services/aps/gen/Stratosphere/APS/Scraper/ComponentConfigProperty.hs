module Stratosphere.APS.Scraper.ComponentConfigProperty (
        ComponentConfigProperty(..), mkComponentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-componentconfig.html>
    ComponentConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-componentconfig.html#cfn-aps-scraper-componentconfig-options>
                             options :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentConfigProperty :: ComponentConfigProperty
mkComponentConfigProperty
  = ComponentConfigProperty
      {haddock_workaround_ = (), options = Prelude.Nothing}
instance ToResourceProperties ComponentConfigProperty where
  toResourceProperties ComponentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.ComponentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Options" Prelude.<$> options])}
instance JSON.ToJSON ComponentConfigProperty where
  toJSON ComponentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Options" Prelude.<$> options]))
instance Property "Options" ComponentConfigProperty where
  type PropertyType "Options" ComponentConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentConfigProperty {..}
    = ComponentConfigProperty {options = Prelude.pure newValue, ..}