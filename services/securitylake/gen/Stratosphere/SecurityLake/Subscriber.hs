module Stratosphere.SecurityLake.Subscriber (
        module Exports, Subscriber(..), mkSubscriber
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.Subscriber.SourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityLake.Subscriber.SubscriberIdentityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Subscriber
  = Subscriber {accessTypes :: (ValueList Prelude.Text),
                dataLakeArn :: (Value Prelude.Text),
                sources :: [SourceProperty],
                subscriberDescription :: (Prelude.Maybe (Value Prelude.Text)),
                subscriberIdentity :: SubscriberIdentityProperty,
                subscriberName :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriber ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> [SourceProperty]
        -> SubscriberIdentityProperty -> Value Prelude.Text -> Subscriber
mkSubscriber
  accessTypes
  dataLakeArn
  sources
  subscriberIdentity
  subscriberName
  = Subscriber
      {accessTypes = accessTypes, dataLakeArn = dataLakeArn,
       sources = sources, subscriberIdentity = subscriberIdentity,
       subscriberName = subscriberName,
       subscriberDescription = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Subscriber where
  toResourceProperties Subscriber {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::Subscriber",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessTypes" JSON..= accessTypes,
                            "DataLakeArn" JSON..= dataLakeArn, "Sources" JSON..= sources,
                            "SubscriberIdentity" JSON..= subscriberIdentity,
                            "SubscriberName" JSON..= subscriberName]
                           (Prelude.catMaybes
                              [(JSON..=) "SubscriberDescription"
                                 Prelude.<$> subscriberDescription,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Subscriber where
  toJSON Subscriber {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessTypes" JSON..= accessTypes,
               "DataLakeArn" JSON..= dataLakeArn, "Sources" JSON..= sources,
               "SubscriberIdentity" JSON..= subscriberIdentity,
               "SubscriberName" JSON..= subscriberName]
              (Prelude.catMaybes
                 [(JSON..=) "SubscriberDescription"
                    Prelude.<$> subscriberDescription,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessTypes" Subscriber where
  type PropertyType "AccessTypes" Subscriber = ValueList Prelude.Text
  set newValue Subscriber {..}
    = Subscriber {accessTypes = newValue, ..}
instance Property "DataLakeArn" Subscriber where
  type PropertyType "DataLakeArn" Subscriber = Value Prelude.Text
  set newValue Subscriber {..}
    = Subscriber {dataLakeArn = newValue, ..}
instance Property "Sources" Subscriber where
  type PropertyType "Sources" Subscriber = [SourceProperty]
  set newValue Subscriber {..} = Subscriber {sources = newValue, ..}
instance Property "SubscriberDescription" Subscriber where
  type PropertyType "SubscriberDescription" Subscriber = Value Prelude.Text
  set newValue Subscriber {..}
    = Subscriber {subscriberDescription = Prelude.pure newValue, ..}
instance Property "SubscriberIdentity" Subscriber where
  type PropertyType "SubscriberIdentity" Subscriber = SubscriberIdentityProperty
  set newValue Subscriber {..}
    = Subscriber {subscriberIdentity = newValue, ..}
instance Property "SubscriberName" Subscriber where
  type PropertyType "SubscriberName" Subscriber = Value Prelude.Text
  set newValue Subscriber {..}
    = Subscriber {subscriberName = newValue, ..}
instance Property "Tags" Subscriber where
  type PropertyType "Tags" Subscriber = [Tag]
  set newValue Subscriber {..}
    = Subscriber {tags = Prelude.pure newValue, ..}