module Stratosphere.Cognito.UserPoolResourceServer.ResourceServerScopeTypeProperty (
        ResourceServerScopeTypeProperty(..),
        mkResourceServerScopeTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceServerScopeTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html>
    ResourceServerScopeTypeProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopedescription>
                                     scopeDescription :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopename>
                                     scopeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceServerScopeTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceServerScopeTypeProperty
mkResourceServerScopeTypeProperty scopeDescription scopeName
  = ResourceServerScopeTypeProperty
      {haddock_workaround_ = (), scopeDescription = scopeDescription,
       scopeName = scopeName}
instance ToResourceProperties ResourceServerScopeTypeProperty where
  toResourceProperties ResourceServerScopeTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolResourceServer.ResourceServerScopeType",
         supportsTags = Prelude.False,
         properties = ["ScopeDescription" JSON..= scopeDescription,
                       "ScopeName" JSON..= scopeName]}
instance JSON.ToJSON ResourceServerScopeTypeProperty where
  toJSON ResourceServerScopeTypeProperty {..}
    = JSON.object
        ["ScopeDescription" JSON..= scopeDescription,
         "ScopeName" JSON..= scopeName]
instance Property "ScopeDescription" ResourceServerScopeTypeProperty where
  type PropertyType "ScopeDescription" ResourceServerScopeTypeProperty = Value Prelude.Text
  set newValue ResourceServerScopeTypeProperty {..}
    = ResourceServerScopeTypeProperty {scopeDescription = newValue, ..}
instance Property "ScopeName" ResourceServerScopeTypeProperty where
  type PropertyType "ScopeName" ResourceServerScopeTypeProperty = Value Prelude.Text
  set newValue ResourceServerScopeTypeProperty {..}
    = ResourceServerScopeTypeProperty {scopeName = newValue, ..}