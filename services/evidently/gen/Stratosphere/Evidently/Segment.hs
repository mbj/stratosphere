module Stratosphere.Evidently.Segment (
        Segment(..), mkSegment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Segment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-segment.html>
    Segment {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-segment.html#cfn-evidently-segment-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-segment.html#cfn-evidently-segment-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-segment.html#cfn-evidently-segment-pattern>
             pattern :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-segment.html#cfn-evidently-segment-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegment :: Value Prelude.Text -> Segment
mkSegment name
  = Segment
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, pattern = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Segment where
  toResourceProperties Segment {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Segment", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Pattern" Prelude.<$> pattern,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Segment where
  toJSON Segment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Pattern" Prelude.<$> pattern,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Segment where
  type PropertyType "Description" Segment = Value Prelude.Text
  set newValue Segment {..}
    = Segment {description = Prelude.pure newValue, ..}
instance Property "Name" Segment where
  type PropertyType "Name" Segment = Value Prelude.Text
  set newValue Segment {..} = Segment {name = newValue, ..}
instance Property "Pattern" Segment where
  type PropertyType "Pattern" Segment = Value Prelude.Text
  set newValue Segment {..}
    = Segment {pattern = Prelude.pure newValue, ..}
instance Property "Tags" Segment where
  type PropertyType "Tags" Segment = [Tag]
  set newValue Segment {..}
    = Segment {tags = Prelude.pure newValue, ..}