module Stratosphere.Glue.Crawler.RecrawlPolicyProperty (
        RecrawlPolicyProperty(..), mkRecrawlPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecrawlPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-recrawlpolicy.html>
    RecrawlPolicyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-recrawlpolicy.html#cfn-glue-crawler-recrawlpolicy-recrawlbehavior>
                           recrawlBehavior :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecrawlPolicyProperty :: RecrawlPolicyProperty
mkRecrawlPolicyProperty
  = RecrawlPolicyProperty
      {haddock_workaround_ = (), recrawlBehavior = Prelude.Nothing}
instance ToResourceProperties RecrawlPolicyProperty where
  toResourceProperties RecrawlPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.RecrawlPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecrawlBehavior" Prelude.<$> recrawlBehavior])}
instance JSON.ToJSON RecrawlPolicyProperty where
  toJSON RecrawlPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecrawlBehavior" Prelude.<$> recrawlBehavior]))
instance Property "RecrawlBehavior" RecrawlPolicyProperty where
  type PropertyType "RecrawlBehavior" RecrawlPolicyProperty = Value Prelude.Text
  set newValue RecrawlPolicyProperty {..}
    = RecrawlPolicyProperty
        {recrawlBehavior = Prelude.pure newValue, ..}