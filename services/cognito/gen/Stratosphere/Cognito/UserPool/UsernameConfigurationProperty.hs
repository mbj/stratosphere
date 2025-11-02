module Stratosphere.Cognito.UserPool.UsernameConfigurationProperty (
        UsernameConfigurationProperty(..), mkUsernameConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UsernameConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html>
    UsernameConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-usernameconfiguration.html#cfn-cognito-userpool-usernameconfiguration-casesensitive>
                                   caseSensitive :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUsernameConfigurationProperty :: UsernameConfigurationProperty
mkUsernameConfigurationProperty
  = UsernameConfigurationProperty
      {haddock_workaround_ = (), caseSensitive = Prelude.Nothing}
instance ToResourceProperties UsernameConfigurationProperty where
  toResourceProperties UsernameConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.UsernameConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive])}
instance JSON.ToJSON UsernameConfigurationProperty where
  toJSON UsernameConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive]))
instance Property "CaseSensitive" UsernameConfigurationProperty where
  type PropertyType "CaseSensitive" UsernameConfigurationProperty = Value Prelude.Bool
  set newValue UsernameConfigurationProperty {..}
    = UsernameConfigurationProperty
        {caseSensitive = Prelude.pure newValue, ..}