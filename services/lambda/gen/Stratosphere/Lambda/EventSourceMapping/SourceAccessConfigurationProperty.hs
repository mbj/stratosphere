module Stratosphere.Lambda.EventSourceMapping.SourceAccessConfigurationProperty (
        SourceAccessConfigurationProperty(..),
        mkSourceAccessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceAccessConfigurationProperty
  = SourceAccessConfigurationProperty {type' :: (Prelude.Maybe (Value Prelude.Text)),
                                       uRI :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceAccessConfigurationProperty ::
  SourceAccessConfigurationProperty
mkSourceAccessConfigurationProperty
  = SourceAccessConfigurationProperty
      {type' = Prelude.Nothing, uRI = Prelude.Nothing}
instance ToResourceProperties SourceAccessConfigurationProperty where
  toResourceProperties SourceAccessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SourceAccessConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "URI" Prelude.<$> uRI])}
instance JSON.ToJSON SourceAccessConfigurationProperty where
  toJSON SourceAccessConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "URI" Prelude.<$> uRI]))
instance Property "Type" SourceAccessConfigurationProperty where
  type PropertyType "Type" SourceAccessConfigurationProperty = Value Prelude.Text
  set newValue SourceAccessConfigurationProperty {..}
    = SourceAccessConfigurationProperty
        {type' = Prelude.pure newValue, ..}
instance Property "URI" SourceAccessConfigurationProperty where
  type PropertyType "URI" SourceAccessConfigurationProperty = Value Prelude.Text
  set newValue SourceAccessConfigurationProperty {..}
    = SourceAccessConfigurationProperty
        {uRI = Prelude.pure newValue, ..}