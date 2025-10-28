module Stratosphere.Pipes.Pipe.PipeTargetRedshiftDataParametersProperty (
        PipeTargetRedshiftDataParametersProperty(..),
        mkPipeTargetRedshiftDataParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetRedshiftDataParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html>
    PipeTargetRedshiftDataParametersProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-database>
                                              database :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-dbuser>
                                              dbUser :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-secretmanagerarn>
                                              secretManagerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-sqls>
                                              sqls :: (ValueList Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-statementname>
                                              statementName :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetredshiftdataparameters.html#cfn-pipes-pipe-pipetargetredshiftdataparameters-withevent>
                                              withEvent :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetRedshiftDataParametersProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> PipeTargetRedshiftDataParametersProperty
mkPipeTargetRedshiftDataParametersProperty database sqls
  = PipeTargetRedshiftDataParametersProperty
      {haddock_workaround_ = (), database = database, sqls = sqls,
       dbUser = Prelude.Nothing, secretManagerArn = Prelude.Nothing,
       statementName = Prelude.Nothing, withEvent = Prelude.Nothing}
instance ToResourceProperties PipeTargetRedshiftDataParametersProperty where
  toResourceProperties PipeTargetRedshiftDataParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetRedshiftDataParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Database" JSON..= database, "Sqls" JSON..= sqls]
                           (Prelude.catMaybes
                              [(JSON..=) "DbUser" Prelude.<$> dbUser,
                               (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                               (JSON..=) "StatementName" Prelude.<$> statementName,
                               (JSON..=) "WithEvent" Prelude.<$> withEvent]))}
instance JSON.ToJSON PipeTargetRedshiftDataParametersProperty where
  toJSON PipeTargetRedshiftDataParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Database" JSON..= database, "Sqls" JSON..= sqls]
              (Prelude.catMaybes
                 [(JSON..=) "DbUser" Prelude.<$> dbUser,
                  (JSON..=) "SecretManagerArn" Prelude.<$> secretManagerArn,
                  (JSON..=) "StatementName" Prelude.<$> statementName,
                  (JSON..=) "WithEvent" Prelude.<$> withEvent])))
instance Property "Database" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "Database" PipeTargetRedshiftDataParametersProperty = Value Prelude.Text
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty
        {database = newValue, ..}
instance Property "DbUser" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "DbUser" PipeTargetRedshiftDataParametersProperty = Value Prelude.Text
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty
        {dbUser = Prelude.pure newValue, ..}
instance Property "SecretManagerArn" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "SecretManagerArn" PipeTargetRedshiftDataParametersProperty = Value Prelude.Text
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty
        {secretManagerArn = Prelude.pure newValue, ..}
instance Property "Sqls" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "Sqls" PipeTargetRedshiftDataParametersProperty = ValueList Prelude.Text
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty {sqls = newValue, ..}
instance Property "StatementName" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "StatementName" PipeTargetRedshiftDataParametersProperty = Value Prelude.Text
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty
        {statementName = Prelude.pure newValue, ..}
instance Property "WithEvent" PipeTargetRedshiftDataParametersProperty where
  type PropertyType "WithEvent" PipeTargetRedshiftDataParametersProperty = Value Prelude.Bool
  set newValue PipeTargetRedshiftDataParametersProperty {..}
    = PipeTargetRedshiftDataParametersProperty
        {withEvent = Prelude.pure newValue, ..}