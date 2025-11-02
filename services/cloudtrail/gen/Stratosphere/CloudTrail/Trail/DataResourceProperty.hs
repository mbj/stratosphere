module Stratosphere.CloudTrail.Trail.DataResourceProperty (
        DataResourceProperty(..), mkDataResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html>
    DataResourceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type>
                          type' :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values>
                          values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataResourceProperty ::
  Value Prelude.Text -> DataResourceProperty
mkDataResourceProperty type'
  = DataResourceProperty
      {haddock_workaround_ = (), type' = type', values = Prelude.Nothing}
instance ToResourceProperties DataResourceProperty where
  toResourceProperties DataResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.DataResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))}
instance JSON.ToJSON DataResourceProperty where
  toJSON DataResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])))
instance Property "Type" DataResourceProperty where
  type PropertyType "Type" DataResourceProperty = Value Prelude.Text
  set newValue DataResourceProperty {..}
    = DataResourceProperty {type' = newValue, ..}
instance Property "Values" DataResourceProperty where
  type PropertyType "Values" DataResourceProperty = ValueList Prelude.Text
  set newValue DataResourceProperty {..}
    = DataResourceProperty {values = Prelude.pure newValue, ..}