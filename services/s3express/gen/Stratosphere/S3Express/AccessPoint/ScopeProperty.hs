module Stratosphere.S3Express.AccessPoint.ScopeProperty (
        ScopeProperty(..), mkScopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScopeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html>
    ScopeProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html#cfn-s3express-accesspoint-scope-permissions>
                   permissions :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html#cfn-s3express-accesspoint-scope-prefixes>
                   prefixes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScopeProperty :: ScopeProperty
mkScopeProperty
  = ScopeProperty
      {haddock_workaround_ = (), permissions = Prelude.Nothing,
       prefixes = Prelude.Nothing}
instance ToResourceProperties ScopeProperty where
  toResourceProperties ScopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::AccessPoint.Scope",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "Prefixes" Prelude.<$> prefixes])}
instance JSON.ToJSON ScopeProperty where
  toJSON ScopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "Prefixes" Prelude.<$> prefixes]))
instance Property "Permissions" ScopeProperty where
  type PropertyType "Permissions" ScopeProperty = ValueList Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty {permissions = Prelude.pure newValue, ..}
instance Property "Prefixes" ScopeProperty where
  type PropertyType "Prefixes" ScopeProperty = ValueList Prelude.Text
  set newValue ScopeProperty {..}
    = ScopeProperty {prefixes = Prelude.pure newValue, ..}