module Stratosphere.SecurityLake.Subscriber.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.Subscriber.AwsLogSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityLake.Subscriber.CustomLogSourceProperty as Exports
import Stratosphere.ResourceProperties
data SourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html#cfn-securitylake-subscriber-source-awslogsource>
                    awsLogSource :: (Prelude.Maybe AwsLogSourceProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html#cfn-securitylake-subscriber-source-customlogsource>
                    customLogSource :: (Prelude.Maybe CustomLogSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {haddock_workaround_ = (), awsLogSource = Prelude.Nothing,
       customLogSource = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::Subscriber.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsLogSource" Prelude.<$> awsLogSource,
                            (JSON..=) "CustomLogSource" Prelude.<$> customLogSource])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsLogSource" Prelude.<$> awsLogSource,
               (JSON..=) "CustomLogSource" Prelude.<$> customLogSource]))
instance Property "AwsLogSource" SourceProperty where
  type PropertyType "AwsLogSource" SourceProperty = AwsLogSourceProperty
  set newValue SourceProperty {..}
    = SourceProperty {awsLogSource = Prelude.pure newValue, ..}
instance Property "CustomLogSource" SourceProperty where
  type PropertyType "CustomLogSource" SourceProperty = CustomLogSourceProperty
  set newValue SourceProperty {..}
    = SourceProperty {customLogSource = Prelude.pure newValue, ..}