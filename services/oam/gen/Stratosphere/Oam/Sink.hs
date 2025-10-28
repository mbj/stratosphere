module Stratosphere.Oam.Sink (
        Sink(..), mkSink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Sink
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-oam-sink.html>
    Sink {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-oam-sink.html#cfn-oam-sink-name>
          name :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-oam-sink.html#cfn-oam-sink-policy>
          policy :: (Prelude.Maybe JSON.Object),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-oam-sink.html#cfn-oam-sink-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSink :: Value Prelude.Text -> Sink
mkSink name
  = Sink
      {haddock_workaround_ = (), name = name, policy = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Sink where
  toResourceProperties Sink {..}
    = ResourceProperties
        {awsType = "AWS::Oam::Sink", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Sink where
  toJSON Sink {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Policy" Prelude.<$> policy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Sink where
  type PropertyType "Name" Sink = Value Prelude.Text
  set newValue Sink {..} = Sink {name = newValue, ..}
instance Property "Policy" Sink where
  type PropertyType "Policy" Sink = JSON.Object
  set newValue Sink {..} = Sink {policy = Prelude.pure newValue, ..}
instance Property "Tags" Sink where
  type PropertyType "Tags" Sink = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Sink {..} = Sink {tags = Prelude.pure newValue, ..}