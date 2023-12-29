module Stratosphere.S3.Bucket.TransitionProperty (
        TransitionProperty(..), mkTransitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitionProperty
  = TransitionProperty {storageClass :: (Value Prelude.Text),
                        transitionDate :: (Prelude.Maybe (Value Prelude.Text)),
                        transitionInDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitionProperty :: Value Prelude.Text -> TransitionProperty
mkTransitionProperty storageClass
  = TransitionProperty
      {storageClass = storageClass, transitionDate = Prelude.Nothing,
       transitionInDays = Prelude.Nothing}
instance ToResourceProperties TransitionProperty where
  toResourceProperties TransitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Transition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StorageClass" JSON..= storageClass]
                           (Prelude.catMaybes
                              [(JSON..=) "TransitionDate" Prelude.<$> transitionDate,
                               (JSON..=) "TransitionInDays" Prelude.<$> transitionInDays]))}
instance JSON.ToJSON TransitionProperty where
  toJSON TransitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageClass" JSON..= storageClass]
              (Prelude.catMaybes
                 [(JSON..=) "TransitionDate" Prelude.<$> transitionDate,
                  (JSON..=) "TransitionInDays" Prelude.<$> transitionInDays])))
instance Property "StorageClass" TransitionProperty where
  type PropertyType "StorageClass" TransitionProperty = Value Prelude.Text
  set newValue TransitionProperty {..}
    = TransitionProperty {storageClass = newValue, ..}
instance Property "TransitionDate" TransitionProperty where
  type PropertyType "TransitionDate" TransitionProperty = Value Prelude.Text
  set newValue TransitionProperty {..}
    = TransitionProperty {transitionDate = Prelude.pure newValue, ..}
instance Property "TransitionInDays" TransitionProperty where
  type PropertyType "TransitionInDays" TransitionProperty = Value Prelude.Integer
  set newValue TransitionProperty {..}
    = TransitionProperty {transitionInDays = Prelude.pure newValue, ..}