module Stratosphere.KinesisAnalyticsV2.Application.SqlApplicationConfigurationProperty (
        module Exports, SqlApplicationConfigurationProperty(..),
        mkSqlApplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.InputProperty as Exports
import Stratosphere.ResourceProperties
data SqlApplicationConfigurationProperty
  = SqlApplicationConfigurationProperty {inputs :: (Prelude.Maybe [InputProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlApplicationConfigurationProperty ::
  SqlApplicationConfigurationProperty
mkSqlApplicationConfigurationProperty
  = SqlApplicationConfigurationProperty {inputs = Prelude.Nothing}
instance ToResourceProperties SqlApplicationConfigurationProperty where
  toResourceProperties SqlApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.SqlApplicationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Inputs" Prelude.<$> inputs])}
instance JSON.ToJSON SqlApplicationConfigurationProperty where
  toJSON SqlApplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Inputs" Prelude.<$> inputs]))
instance Property "Inputs" SqlApplicationConfigurationProperty where
  type PropertyType "Inputs" SqlApplicationConfigurationProperty = [InputProperty]
  set newValue SqlApplicationConfigurationProperty {}
    = SqlApplicationConfigurationProperty
        {inputs = Prelude.pure newValue, ..}