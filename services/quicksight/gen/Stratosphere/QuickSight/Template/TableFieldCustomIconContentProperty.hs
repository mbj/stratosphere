module Stratosphere.QuickSight.Template.TableFieldCustomIconContentProperty (
        TableFieldCustomIconContentProperty(..),
        mkTableFieldCustomIconContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldCustomIconContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldcustomiconcontent.html>
    TableFieldCustomIconContentProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldcustomiconcontent.html#cfn-quicksight-template-tablefieldcustomiconcontent-icon>
                                         icon :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldCustomIconContentProperty ::
  TableFieldCustomIconContentProperty
mkTableFieldCustomIconContentProperty
  = TableFieldCustomIconContentProperty
      {haddock_workaround_ = (), icon = Prelude.Nothing}
instance ToResourceProperties TableFieldCustomIconContentProperty where
  toResourceProperties TableFieldCustomIconContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldCustomIconContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Icon" Prelude.<$> icon])}
instance JSON.ToJSON TableFieldCustomIconContentProperty where
  toJSON TableFieldCustomIconContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Icon" Prelude.<$> icon]))
instance Property "Icon" TableFieldCustomIconContentProperty where
  type PropertyType "Icon" TableFieldCustomIconContentProperty = Value Prelude.Text
  set newValue TableFieldCustomIconContentProperty {..}
    = TableFieldCustomIconContentProperty
        {icon = Prelude.pure newValue, ..}