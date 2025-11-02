module Stratosphere.QuickSight.Theme.ThemeErrorProperty (
        ThemeErrorProperty(..), mkThemeErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThemeErrorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeerror.html>
    ThemeErrorProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeerror.html#cfn-quicksight-theme-themeerror-message>
                        message :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeerror.html#cfn-quicksight-theme-themeerror-type>
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeErrorProperty :: ThemeErrorProperty
mkThemeErrorProperty
  = ThemeErrorProperty
      {haddock_workaround_ = (), message = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ThemeErrorProperty where
  toResourceProperties ThemeErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.ThemeError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ThemeErrorProperty where
  toJSON ThemeErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" ThemeErrorProperty where
  type PropertyType "Message" ThemeErrorProperty = Value Prelude.Text
  set newValue ThemeErrorProperty {..}
    = ThemeErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" ThemeErrorProperty where
  type PropertyType "Type" ThemeErrorProperty = Value Prelude.Text
  set newValue ThemeErrorProperty {..}
    = ThemeErrorProperty {type' = Prelude.pure newValue, ..}