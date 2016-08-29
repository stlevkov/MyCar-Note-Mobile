<div class="body">
    <?php $this->title = 'Edit Existing Post'; ?>

    <h1><?=htmlspecialchars($this->title)?></h1>

    <form method="post">
        <div>Title:</div>
        <input type="text" name="post_title" value="<?=
        htmlspecialchars($this->post['title'])?>" />
        <div>Content:</div>
        <textarea rows="10" name="post_content"><?=
            htmlspecialchars($this->post['content'])?></textarea>
        <div>Date (yyyy-MM-dd hh:mm:ss):</div>
        <input type="text" name="post_date" value="<?=
        htmlspecialchars($this->post['date'])?>" />
        <div><input type="submit" value="Edit">
            <a href="<?=APP_ROOT?>/myposts">[Cancel]</a></div>
    </form>
</div>
