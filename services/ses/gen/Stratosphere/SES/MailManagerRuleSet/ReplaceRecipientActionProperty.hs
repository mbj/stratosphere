module Stratosphere.SES.MailManagerRuleSet.ReplaceRecipientActionProperty (
        ReplaceRecipientActionProperty(..),
        mkReplaceRecipientActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplaceRecipientActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-replacerecipientaction.html>
    ReplaceRecipientActionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-replacerecipientaction.html#cfn-ses-mailmanagerruleset-replacerecipientaction-replacewith>
                                    replaceWith :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplaceRecipientActionProperty :: ReplaceRecipientActionProperty
mkReplaceRecipientActionProperty
  = ReplaceRecipientActionProperty
      {haddock_workaround_ = (), replaceWith = Prelude.Nothing}
instance ToResourceProperties ReplaceRecipientActionProperty where
  toResourceProperties ReplaceRecipientActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.ReplaceRecipientAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplaceWith" Prelude.<$> replaceWith])}
instance JSON.ToJSON ReplaceRecipientActionProperty where
  toJSON ReplaceRecipientActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplaceWith" Prelude.<$> replaceWith]))
instance Property "ReplaceWith" ReplaceRecipientActionProperty where
  type PropertyType "ReplaceWith" ReplaceRecipientActionProperty = ValueList Prelude.Text
  set newValue ReplaceRecipientActionProperty {..}
    = ReplaceRecipientActionProperty
        {replaceWith = Prelude.pure newValue, ..}