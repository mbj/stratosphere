module Stratosphere.Lex.BotAlias.TextLogDestinationProperty (
        module Exports, TextLogDestinationProperty(..),
        mkTextLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.CloudWatchLogGroupLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
data TextLogDestinationProperty
  = TextLogDestinationProperty {cloudWatch :: CloudWatchLogGroupLogDestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextLogDestinationProperty ::
  CloudWatchLogGroupLogDestinationProperty
  -> TextLogDestinationProperty
mkTextLogDestinationProperty cloudWatch
  = TextLogDestinationProperty {cloudWatch = cloudWatch}
instance ToResourceProperties TextLogDestinationProperty where
  toResourceProperties TextLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.TextLogDestination",
         supportsTags = Prelude.False,
         properties = ["CloudWatch" JSON..= cloudWatch]}
instance JSON.ToJSON TextLogDestinationProperty where
  toJSON TextLogDestinationProperty {..}
    = JSON.object ["CloudWatch" JSON..= cloudWatch]
instance Property "CloudWatch" TextLogDestinationProperty where
  type PropertyType "CloudWatch" TextLogDestinationProperty = CloudWatchLogGroupLogDestinationProperty
  set newValue TextLogDestinationProperty {}
    = TextLogDestinationProperty {cloudWatch = newValue, ..}