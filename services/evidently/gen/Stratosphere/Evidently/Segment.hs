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
  = Segment {description :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Value Prelude.Text),
             pattern :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag])}
mkSegment :: Value Prelude.Text -> Segment
mkSegment name
  = Segment
      {name = name, description = Prelude.Nothing,
       pattern = Prelude.Nothing, tags = Prelude.Nothing}
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