module Stratosphere.CustomerProfiles.EventStream (
        EventStream(..), mkEventStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventStream
  = EventStream {domainName :: (Value Prelude.Text),
                 eventStreamName :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventStream ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EventStream
mkEventStream domainName eventStreamName uri
  = EventStream
      {domainName = domainName, eventStreamName = eventStreamName,
       uri = uri, tags = Prelude.Nothing}
instance ToResourceProperties EventStream where
  toResourceProperties EventStream {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventStream",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName,
                            "EventStreamName" JSON..= eventStreamName, "Uri" JSON..= uri]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventStream where
  toJSON EventStream {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName,
               "EventStreamName" JSON..= eventStreamName, "Uri" JSON..= uri]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainName" EventStream where
  type PropertyType "DomainName" EventStream = Value Prelude.Text
  set newValue EventStream {..}
    = EventStream {domainName = newValue, ..}
instance Property "EventStreamName" EventStream where
  type PropertyType "EventStreamName" EventStream = Value Prelude.Text
  set newValue EventStream {..}
    = EventStream {eventStreamName = newValue, ..}
instance Property "Tags" EventStream where
  type PropertyType "Tags" EventStream = [Tag]
  set newValue EventStream {..}
    = EventStream {tags = Prelude.pure newValue, ..}
instance Property "Uri" EventStream where
  type PropertyType "Uri" EventStream = Value Prelude.Text
  set newValue EventStream {..} = EventStream {uri = newValue, ..}