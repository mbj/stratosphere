module Stratosphere.SES.MailManagerRuleSet.ArchiveActionProperty (
        ArchiveActionProperty(..), mkArchiveActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveActionProperty
  = ArchiveActionProperty {actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                           targetArchive :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveActionProperty ::
  Value Prelude.Text -> ArchiveActionProperty
mkArchiveActionProperty targetArchive
  = ArchiveActionProperty
      {targetArchive = targetArchive,
       actionFailurePolicy = Prelude.Nothing}
instance ToResourceProperties ArchiveActionProperty where
  toResourceProperties ArchiveActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.ArchiveAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetArchive" JSON..= targetArchive]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy"
                                 Prelude.<$> actionFailurePolicy]))}
instance JSON.ToJSON ArchiveActionProperty where
  toJSON ArchiveActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetArchive" JSON..= targetArchive]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy"
                    Prelude.<$> actionFailurePolicy])))
instance Property "ActionFailurePolicy" ArchiveActionProperty where
  type PropertyType "ActionFailurePolicy" ArchiveActionProperty = Value Prelude.Text
  set newValue ArchiveActionProperty {..}
    = ArchiveActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "TargetArchive" ArchiveActionProperty where
  type PropertyType "TargetArchive" ArchiveActionProperty = Value Prelude.Text
  set newValue ArchiveActionProperty {..}
    = ArchiveActionProperty {targetArchive = newValue, ..}