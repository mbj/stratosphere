module Stratosphere.FinSpace.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FinSpace.Environment.FederationParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.FinSpace.Environment.SuperuserParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-federationmode>
                 federationMode :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-federationparameters>
                 federationParameters :: (Prelude.Maybe FederationParametersProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-kmskeyid>
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-superuserparameters>
                 superuserParameters :: (Prelude.Maybe SuperuserParametersProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-finspace-environment.html#cfn-finspace-environment-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment name
  = Environment
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, federationMode = Prelude.Nothing,
       federationParameters = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       superuserParameters = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FederationMode" Prelude.<$> federationMode,
                               (JSON..=) "FederationParameters" Prelude.<$> federationParameters,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SuperuserParameters" Prelude.<$> superuserParameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FederationMode" Prelude.<$> federationMode,
                  (JSON..=) "FederationParameters" Prelude.<$> federationParameters,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SuperuserParameters" Prelude.<$> superuserParameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "FederationMode" Environment where
  type PropertyType "FederationMode" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {federationMode = Prelude.pure newValue, ..}
instance Property "FederationParameters" Environment where
  type PropertyType "FederationParameters" Environment = FederationParametersProperty
  set newValue Environment {..}
    = Environment {federationParameters = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Environment where
  type PropertyType "KmsKeyId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "SuperuserParameters" Environment where
  type PropertyType "SuperuserParameters" Environment = SuperuserParametersProperty
  set newValue Environment {..}
    = Environment {superuserParameters = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}